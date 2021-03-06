import 'package:flutter/material.dart';

import 'package:spot_out/theme/app_colors.dart';
import 'package:spot_out/theme/app_text_styles.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  final Function()? onTap;
  final Color? color;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  const RoundedButton({
    required this.text,
    this.borderRadius = 8.0,
    this.onTap,
    this.color,
    this.textStyle,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? AppColors.pinkMain,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: padding ??
              const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
          child: Text(
            text,
            style: textStyle ??
                AppTextStyles.button1.copyWith(
                  color: AppColors.bgWhite,
                ),
          ),
        ),
      ),
    );
  }
}
