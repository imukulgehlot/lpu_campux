import 'package:flutter/material.dart';

import '../basic_features.dart';
import 'custom_image.dart';

class ExpansionRow extends StatefulWidget {
  final String title;
  final String subtitle;
  final Widget expandedWidget;

  const ExpansionRow(
      {super.key,
      required this.title,
      required this.expandedWidget,
      required this.subtitle});

  @override
  State<ExpansionRow> createState() => _ExpansionFaqRowFaqRowState();
}

class _ExpansionFaqRowFaqRowState extends State<ExpansionRow>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  bool showAddIcon = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 350), vsync: this);
    _animation = Tween(begin: 0.0, end: .5)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.circular(Dimensions.commonRadius),
            ),
            child: ExpansionTile(
              onExpansionChanged: (value) => setState(() {
                  value ? _controller.forward() : _controller.reverse();
                  showAddIcon = value;
                }),
              initiallyExpanded: false,
              title: Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.w8,
                  top: Dimensions.h3,
                  bottom: Dimensions.h3
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: fontStyleSemiBold20.copyWith(
                        fontSize: Dimensions.sp28,
                        height: 1.2,
                      ),
                    ),

                    // Subtitle
                    Text(
                      widget.subtitle,
                      style: fontStyleSemiBold14,
                    ),
                  ],
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.only(right: Dimensions.w3),
                child: RotationTransition(
                  turns: _animation,
                  child: CustomSvgAssetImage(
                    image: !showAddIcon ? AppImages.icPlus : AppImages.icPlus,
                    width: Dimensions.w14,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Dimensions.r10)),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      Dimensions.r8,
                    ),
                    bottomLeft: Radius.circular(
                      Dimensions.r8,
                    ),
                  ),
                  child: SizedBox(
                      width: double.infinity, child: widget.expandedWidget),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
