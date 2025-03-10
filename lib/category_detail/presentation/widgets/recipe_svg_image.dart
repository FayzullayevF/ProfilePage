import 'package:chef_staff/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeSvgImage extends StatelessWidget {
  const RecipeSvgImage({
    super.key,
    this.alignment = Alignment.center,
    this.color = AppColors.nameColor,
    required this.height,
    required this.image,
    required this.width,
  });

  final String image;
  final Alignment alignment;
  final Color color;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SvgPicture.asset(
        image,
        width: width,
        height: height,
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
