import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../core/basic_features.dart';

class AnnouncementTile extends StatelessWidget {
  const AnnouncementTile({
    super.key,
    required this.announcement,
  });

  final String announcement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.commonPaddingForScreen,
        vertical: Dimensions.h5,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(Dimensions.commonRadius),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w5),
          child: Html(
            data: announcement,
            onLinkTap: (url, attributes, element) {
              if(url == null) return;
              AppUtils.openLink(link: url);
            },
          ),
        ),
      ),
    );
  }
}
