import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient? gradient;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 40.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
        borderRadius: BorderRadius.circular(30.w),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
