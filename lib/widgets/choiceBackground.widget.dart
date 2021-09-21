import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui' as ui;

class ChoiceBackgroundWidget extends StatelessWidget {
  const ChoiceBackgroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double topRightWidth = 170.w;
    double bottomLeftWidth = 55.w;
    double filledCircleWidth = 100.w;
    double lightCircleWidth = 50.w;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            child: CustomPaint(
              size: Size(topRightWidth,
                  (topRightWidth * 0.9142857142857143).toDouble()),
              painter: TopRightCustomPainter(),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CustomPaint(
              size: Size(bottomLeftWidth,
                  (bottomLeftWidth * 2.5428571428571427).toDouble()),
              painter: BottomLeftCustomPainter(),
            ),
          ),
          Positioned(
            left: 30.w,
            bottom: 90.h,
            child: CustomPaint(
              size: Size(filledCircleWidth,
                  (filledCircleWidth * 0.9855072463768116).toDouble()),
              painter: FilledCircleCustomPainter(),
            ),
          ),
          Positioned(
            left: 100.w,
            bottom: 120.h,
            child: CustomPaint(
              size: Size(lightCircleWidth, (lightCircleWidth * 1).toDouble()),
              painter: LightCircleCustomPainter(),
            ),
          ),
          Align(alignment: Alignment.center, child: child),
        ],
      ),
    );
  }
}

class LightCircleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9505727, size.height * 0.2831652);
    path_0.cubicTo(
        size.width * 0.8976818,
        size.height * 0.1313359,
        size.width * 0.6100697,
        size.height * -0.01549394,
        size.width * 0.4236030,
        size.height * 0.02070742);
    path_0.cubicTo(
        size.width * 0.2101121,
        size.height * 0.1021608,
        size.width * -0.1309326,
        size.height * 0.2777348,
        size.width * 0.08309864,
        size.height * 0.7266333);
    path_0.cubicTo(
        size.width * 0.2074091,
        size.height * 0.8654061,
        size.width * 0.5419682,
        size.height * 1.110371,
        size.width * 0.7560000,
        size.height * 0.9076424);
    path_0.cubicTo(
        size.width * 1.023538,
        size.height * 0.6542318,
        size.width * 1.007324,
        size.height * 0.4460742,
        size.width * 0.9505727,
        size.height * 0.2831652);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Color(0xffFF9898).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(0.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class FilledCircleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9646522, size.height * 0.2763890);
    path_0.cubicTo(
        size.width * 0.9101087,
        size.height * 0.1198154,
        size.width * 0.6135101,
        size.height * -0.03160316,
        size.width * 0.4212159,
        size.height * 0.005729566);
    path_0.cubicTo(
        size.width * 0.2010536,
        size.height * 0.08972794,
        size.width * -0.1506493,
        size.height * 0.2707890,
        size.width * 0.07007043,
        size.height * 0.7337154);
    path_0.cubicTo(
        size.width * 0.1982659,
        size.height * 0.8768235,
        size.width * 0.5432797,
        size.height * 1.129441,
        size.width * 0.7640000,
        size.height * 0.9203824);
    path_0.cubicTo(
        size.width * 1.039899,
        size.height * 0.6590522,
        size.width * 1.023181,
        size.height * 0.4443882,
        size.width * 0.9646522,
        size.height * 0.2763890);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffEDF0FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomLeftCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.02809914, size.height * 0.7752809);
    path_0.cubicTo(
        size.width * -0.1547586,
        size.height * 0.3056180,
        size.width * 0.5995271,
        size.height * 0.06273427,
        size.width * 0.9995271,
        0);
    path_0.lineTo(size.width * 0.9995271, size.height * 0.9971910);
    path_0.cubicTo(
        size.width * 0.3309557,
        size.height * 1.019663,
        size.width * 0.07333729,
        size.height * 0.8586124,
        size.width * 0.02809914,
        size.height * 0.7752809);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFBBEBE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TopRightCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6353667, size.height * 0.4050219);
    path_0.cubicTo(
        size.width * 0.8968095,
        size.height * 0.2834625,
        size.width * 0.7510524,
        size.height * 0.1192385,
        size.width * 0.9993952,
        size.height * -0.02774464);
    path_0.lineTo(size.width * -0.06011286, size.height * -0.03395854);
    path_0.lineTo(size.width * -0.06516810, size.height * 0.9972760);
    path_0.cubicTo(
        size.width * 0.09260000,
        size.height * 0.9513281,
        size.width * 0.02844100,
        size.height * 0.8441771,
        size.width * 0.09409429,
        size.height * 0.6464740);
    path_0.cubicTo(
        size.width * 0.1907405,
        size.height * 0.3554464,
        size.width * 0.3085581,
        size.height * 0.5569688,
        size.width * 0.6353667,
        size.height * 0.4050219);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFBBEBE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
