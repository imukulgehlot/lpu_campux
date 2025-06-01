import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';

class ImagePreviewScreen extends StatelessWidget {
  final String image;
  final bool isAsset;

  const ImagePreviewScreen({
    super.key,
    required this.image,
    this.isAsset = true,
  });

  Future<void> _shareImage(BuildContext context) async {
    try {
      final file = isAsset ? await _getTempFileFromAsset(context) : File(image);

      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(file.path)],
          title: 'Check this out!',
        ),
      );
    } catch (e) {
      AppUtils.showSnackBar(message: "Sharing failed 😶");
    }
  }

  Future<File> _getTempFileFromAsset(BuildContext context) async {
    final byteData = await DefaultAssetBundle.of(context).load(image);
    final buffer = byteData.buffer;
    final tempDir = Directory.systemTemp;
    return File('${tempDir.path}/preview_img.jpg').writeAsBytes(
      buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ImageProvider imageProvider =
        isAsset ? AssetImage(image) : FileImage(File(image)) as ImageProvider;

    return CupertinoPageScaffold(
      backgroundColor: Colors.black,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        middle: const Text('Preview', style: TextStyle(color: Colors.white)),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            CupertinoIcons.back,
            color: Colors.white,
            size: Dimensions.w25,
          ),
        ),
        trailing: GestureDetector(
          onTap: () => _shareImage(context),
          child: Icon(
            CupertinoIcons.share,
            color: Colors.white,
            size: Dimensions.w25,
          ),
        ),
      ),
      child: SafeArea(
        child: SizedBox(
           height: Get.height - Dimensions.h50,
          child: Center(
            child: Hero(
              tag: image,
              child: PhotoView(
                imageProvider: imageProvider,
                backgroundDecoration: const BoxDecoration(color: Colors.black),
                minScale: PhotoViewComputedScale.contained * 0.9,
                maxScale: PhotoViewComputedScale.covered * 2.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
