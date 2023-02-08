import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final Size? minimumSize;
  final Color? backgroundColor;
  final String name;
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    this.minimumSize = const Size(100, 50),
    this.backgroundColor,
    this.textColor,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(minimumSize!),
        backgroundColor: MaterialStateProperty.all<Color>(
            backgroundColor ?? ColorUtils.transparent),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return ColorUtils.transparent;
            }
            return null;
          },
        ),
      ),
      child: Text(
        name,
        style: TextStyleUtils.regular(16)
            .copyWith(color: textColor ?? ColorUtils.transparent07),
      ),
    );
  }
}
