import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/widgets/custom_image.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'full_screen_youtube_player.dart';

class YouTubePlayerBox extends StatefulWidget {
  final String videoUrl;

  const YouTubePlayerBox({super.key, required this.videoUrl});

  @override
  State<YouTubePlayerBox> createState() => _YouTubePlayerBoxState();
}

class _YouTubePlayerBoxState extends State<YouTubePlayerBox> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        enableCaption: true,
        isLive: false,
        controlsVisibleAtStart: true,
        forceHD: true,
        disableDragSeek: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openFullscreenPlayer() =>
      Get.to(() => FullscreenPlayerPage(controller: _controller))?.then((_) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
          ]);

          await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        });
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.h6),
      height: Get.height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: const Offset(0, 8),
            blurRadius: 8,
            spreadRadius: 3,
          ),
        ],
      ),
      child: YoutubePlayerBuilder(
        onEnterFullScreen: () {}, // override default
        onExitFullScreen: () {}, // override default
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: AppColors.primaryColor,
          progressColors: ProgressBarColors(
            playedColor: AppColors.primaryColor,
            handleColor: AppColors.primaryColor,
          ),
          bottomActions: [
            CurrentPosition(),
            ProgressBar(isExpanded: true),
            PlaybackSpeedButton(
                icon: CustomSvgAssetImage(
              image: AppImages.icVideoSpeed,
              height: 17.0,
              width: 17.0,
            )),

            // 👇 Our custom fullscreen button
            IconButton(
              icon: const Icon(Icons.fullscreen, color: Colors.white),
              onPressed: _openFullscreenPlayer,
            ),
          ],
        ),

        builder: (context, player) => player,
      ),
    );
  }
}
