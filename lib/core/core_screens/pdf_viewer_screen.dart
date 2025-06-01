import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/utils/logger_util.dart';
import 'package:lpu_campux/core/utils/shimmer_effect.dart';
import 'package:lpu_campux/core/widgets/custom_appbar.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFViewerScreen extends StatefulWidget {
  final String filePath;
  final String title;
  final String subtitle;

  const PDFViewerScreen({
    super.key,
    required this.filePath,
    required this.title,
    required this.subtitle,
  });

  @override
  State<PDFViewerScreen> createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  SfPdfViewer? pdfViewer;
  bool isLoading = false;
  double downloadProgress = 0.0;
  File? cachedFile;
  String? errorMessage;

  final CancelToken cancelToken = CancelToken();

  @override
  void initState() {
    super.initState();
    _loadPdf();
  }

  @override
  void dispose() {
    // Cancel download if it's still running
    cancelToken.cancel("PDF screen popped");
    super.dispose();
  }

  Future<void> _loadPdf() async {
    if (widget.filePath.startsWith('http')) {
      setState(() {
        isLoading = true;
        errorMessage = null;
        downloadProgress = 0;
      });

      try {
        final file = await _downloadAndCachePdf(widget.filePath);
        if (file != null && mounted) {
          // Read bytes off the main thread
          final result = await compute(_loadPdfFromDisk, file.path);
          if (result != null && mounted) {
            setState(() {
              pdfViewer = SfPdfViewer.memory(result.bytes);
              cachedFile = result.file;
            });
          } else {
            setState(() => errorMessage = 'Failed to read downloaded file.');
          }
        }
      } catch (e, s) {
        logger.e('📛 Exception: $e\n$s');
        if (mounted) {
          setState(() => errorMessage = 'Failed to load PDF: $e');
        }
      } finally {
        if (mounted) {
          setState(() => isLoading = false);
        }
      }
    } else {
      try {
        final result = await compute(_loadPdfFromDisk, widget.filePath);
        if (result != null && mounted) {
          setState(() {
            pdfViewer = SfPdfViewer.memory(result.bytes);
            cachedFile = result.file;
          });
        } else {
          setState(() => errorMessage = 'Local file not found.');
        }
      } catch (e) {
        setState(() => errorMessage = 'Error opening file: $e');
      }
    }
  }

  Future<File?> _downloadAndCachePdf(String url) async {
    final dir = await getApplicationDocumentsDirectory();
    final fileName = p.basename(url);
    final file = File('${dir.path}/$fileName');

    if (await file.exists()) return file;

    final dio = Dio();

    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
        return client;
      },
    );



    try {
      logger.i("📥 Starting download of $fileName");

      await dio.download(
        url,
        file.path,
        cancelToken: cancelToken,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            double percent = received / total;
            if (mounted) {
              setState(() => downloadProgress = percent);
            }
            logger.i(
                "📊 Download Progress: ${(percent * 100).toStringAsFixed(2)}%");
          }
        },
      );

      return file;
    } catch (e) {
      if (await file.exists()) {
        await file.delete(); // clean corrupted partial
      }
      logger.e('❌ Download failed: $e');
      if (!e.toString().contains('The request was manually cancelled')) {
        throw Exception("Download failed: $e");
      }
    }
    return null;
  }

  void _shareFile() {
    if (cachedFile != null) {
      SharePlus.instance.share(ShareParams(
          files: [XFile(cachedFile!.path)],
          text: 'Check out LPU Content for ${widget.title}! ✏️'));
    }
  }

  Widget _buildShimmerLoader() {
    return Center(
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.picture_as_pdf, size: 64, color: Colors.grey),
            const SizedBox(height: 12),
            Container(height: 20, width: 150, color: Colors.white),
            const SizedBox(height: 10),
            Text(
                '${(downloadProgress * 100).toStringAsFixed(0)}% downloading...')
          ],
        ),
      ),
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 10),
            Text(errorMessage ?? 'Something went wrong!',
                style: const TextStyle(color: Colors.red, fontSize: 16),
                textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.refresh),
              label: const Text("Retry"),
              onPressed: _loadPdf,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.defaultAppBarWithBackButton(
        title: widget.title,
        subtitle: widget.subtitle,
        elevation: 2,
        actions: [
          if (cachedFile != null)
            IconButton(
              icon: const Icon(
                CupertinoIcons.share,
                color: AppColors.textColor,
              ),
              onPressed: _shareFile,
            ),
        ],
      ),
      body: isLoading
          ? _buildShimmerLoader()
          : errorMessage != null
              ? _buildErrorView()
              : Padding(
                  padding: EdgeInsets.only(top: Dimensions.h5),
                  child: (pdfViewer ??
                      const Center(child: Text('PDF not loaded'))),
                ),
    );
  }
}

class _PdfLoadResult {
  final Uint8List bytes;
  final File file;

  _PdfLoadResult(this.bytes, this.file);
}

Future<_PdfLoadResult?> _loadPdfFromDisk(String path) async {
  final file = File(path);
  if (await file.exists()) {
    final bytes = await file.readAsBytes();
    return _PdfLoadResult(bytes, file);
  }
  return null;
}
