library custom_button;

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //functions
  void Function()? onTap;
  void Function()? onLongPress;
  void Function()? onTapCancel;
  void Function()? onDoubleTap;
  void Function(bool)? onHover;
  void Function(bool)? onFocusChange;
  void Function(bool)? onHighlightChanged;
  void Function(TapDownDetails)? onTapDown;

  //colors
  Color? focusColor;
  Color? hoverColor;
  Color? splashColor;
  Color? highlightColor;
  Color backgroundColor;
  MaterialStateProperty<Color>? overlayColor;
  //child
  Widget? child;
  //Dimentions
  double width;
  double height;
  // borderRadisu
  BorderRadiusGeometry borderRadius;
  Button({
    this.onTap,
    this.onHover,
    this.onLongPress,
    this.onTapCancel,
    this.onTapDown,
    this.onDoubleTap,
    this.onFocusChange,
    this.onHighlightChanged,
    this.focusColor,
    this.highlightColor,
    this.overlayColor,
    this.backgroundColor = Colors.yellow,
    this.splashColor = Colors.amber,
    this.hoverColor = Colors.yellowAccent,
    required this.child,
    required this.borderRadius,
    this.height = 50,
    this.width = 100,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      clipBehavior: Clip.antiAlias,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: Container(
        width: width,
        height: height,
        child: InkWell(
          focusColor: focusColor,
          hoverColor: hoverColor,
          splashColor: splashColor,
          overlayColor: overlayColor,
          highlightColor: highlightColor,
          onTap: onTap,
          onHover: onHover,
          onDoubleTap: onDoubleTap,
          onFocusChange: onFocusChange,
          onLongPress: onLongPress,
          onTapCancel: onTapCancel,
          onTapDown: onTapDown,
          onHighlightChanged: onHighlightChanged,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
