import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final double borderRadius;
  final double fontSize;
  final Color titleColor;
  final Function onTap;
  final EdgeInsets padding;
  final bool isOutlined;
  final double width;
  final double height;
  const CustomButton({
    Key key,
    this.title,
    this.color,
    this.borderRadius,
    this.fontSize,
    this.titleColor,
    this.onTap,
    this.padding,
    this.isOutlined = false,
    this.height = 44,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          width: width ?? MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            border: Border.all(color: color ?? ThemeUtils.darkGreen),
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            color: !isOutlined ? (color ?? ThemeUtils.darkGreen) : Colors.white,
          ),
          child: Center(
            child: Text(
              title ?? 'Title of button',
              style: TextStyle(
                fontSize: fontSize ?? 16,
                color: !isOutlined
                    ? (titleColor ?? Colors.white)
                    : (color ?? ThemeUtils.darkGreen),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
