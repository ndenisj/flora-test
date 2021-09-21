import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui' as ui;

class DobDateOfBirthWidget extends StatelessWidget {
  const DobDateOfBirthWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double topRightWidth = 170.w;
    double bottomRightWidth = 170.w;
    double singleLineWidth = 170.w;
    double sideCircleWidth = 20.w;
    double circle1Width = 50.w;
    double ellipse1Width = 50.w;
    double ellipse2CustomPainter = 30.w;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            child: CustomPaint(
              size: Size(
                topRightWidth,
                (topRightWidth * 0.5549132947976878).toDouble(),
              ),
              painter: TopRightCustomPainter(),
            ),
          ),
          Positioned(
            left: 10.w,
            top: 20.h,
            child: CustomPaint(
              size: Size(
                  singleLineWidth, (singleLineWidth * 0.453125).toDouble()),
              painter: SingleLineCustomPainter(),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CustomPaint(
              size: Size(bottomRightWidth,
                  (bottomRightWidth * 0.8823529411764706).toDouble()),
              painter: BottomRightCustomPainter(),
            ),
          ),
          Positioned(
            bottom: 250.h,
            right: 0,
            child: CustomPaint(
              size: Size(sideCircleWidth,
                  (sideCircleWidth * 2.0476190476190474).toDouble()),
              painter: SideCircleCustomPainter(),
            ),
          ),
          Positioned(
            bottom: 100.h,
            left: 35.w,
            child: CustomPaint(
              size: Size(
                  circle1Width, (circle1Width * 0.9855072463768116).toDouble()),
              painter: Circle1CustomPainter(),
            ),
          ),
          Positioned(
            top: 45.h,
            right: 70.h,
            child: CustomPaint(
              size: Size(ellipse1Width, (ellipse1Width * 1).toDouble()),
              painter: Ellipse1CustomPainter(),
            ),
          ),
          Positioned(
            top: 75.h,
            right: 70.h,
            child: CustomPaint(
              size: Size(ellipse2CustomPainter,
                  (ellipse2CustomPainter * 1.0232558139534884).toDouble()),
              painter: Ellipse2CustomPainter(),
            ),
          ),
          Align(alignment: Alignment.center, child: child),
        ],
      ),
    );
  }
}

class Ellipse2CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9767442, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.9767442,
        size.height * 0.7640864,
        size.width * 0.7627977,
        size.height * 0.9772727,
        size.width * 0.5000000,
        size.height * 0.9772727);
    path_0.cubicTo(
        size.width * 0.2372023,
        size.height * 0.9772727,
        size.width * 0.02325581,
        size.height * 0.7640864,
        size.width * 0.02325581,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.02325581,
        size.height * 0.2359136,
        size.width * 0.2372023,
        size.height * 0.02272727,
        size.width * 0.5000000,
        size.height * 0.02272727);
    path_0.cubicTo(
        size.width * 0.7627977,
        size.height * 0.02272727,
        size.width * 0.9767442,
        size.height * 0.2359136,
        size.width * 0.9767442,
        size.height * 0.5000000);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04651163;
    paint_0_stroke.color = Color(0xffFFB4B4).withOpacity(1.0);
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

class Ellipse1CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffEDF0FF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5000000, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Circle1CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9646536, size.height * 0.2763882);
    path_0.cubicTo(
        size.width * 0.9101101,
        size.height * 0.1198151,
        size.width * 0.6135101,
        size.height * -0.03160324,
        size.width * 0.4212159,
        size.height * 0.005729574);
    path_0.cubicTo(
        size.width * 0.2010536,
        size.height * 0.08972824,
        size.width * -0.1506493,
        size.height * 0.2707897,
        size.width * 0.07007043,
        size.height * 0.7337147);
    path_0.cubicTo(
        size.width * 0.1982667,
        size.height * 0.8768235,
        size.width * 0.5432797,
        size.height * 1.129444,
        size.width * 0.7639986,
        size.height * 0.9203809);
    path_0.cubicTo(
        size.width * 1.039899,
        size.height * 0.6590515,
        size.width * 1.023178,
        size.height * 0.4443882,
        size.width * 0.9646536,
        size.height * 0.2763882);
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

class SideCircleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.895529, size.height * 0.7162326);
    path_0.cubicTo(
        size.width * 2.059905,
        size.height * 0.5759163,
        size.width * 1.895781,
        size.height * 0.2564023,
        size.width * 1.584586,
        size.height * 0.1351016);
    path_0.cubicTo(
        size.width * 1.165938,
        size.height * 0.02235937,
        size.width * 0.4263157,
        size.height * -0.1280444,
        size.width * 0.01909924,
        size.height * 0.3316326);
    path_0.cubicTo(
        size.width * -0.02734257,
        size.height * 0.5189372,
        size.width * 0.04796714,
        size.height * 0.9390651,
        size.width * 0.6563714,
        size.height * 0.9729907);
    path_0.cubicTo(
        size.width * 1.416876,
        size.height * 1.015398,
        size.width * 1.719157,
        size.height * 0.8667884,
        size.width * 1.895529,
        size.height * 0.7162326);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFE4E4).withOpacity(0.58);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomRightCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2469482, size.height * 0.6732000);
    path_0.cubicTo(
        size.width * -0.03629829,
        size.height * 0.8115400,
        size.width * -0.02647059,
        size.height * 0.9600000,
        size.width * 0.04411765,
        size.height * 1.010000);
    path_0.lineTo(size.width * 1.004329, size.height * 1.010000);
    path_0.lineTo(size.width * 1.004329, size.height * 0.002564747);
    path_0.cubicTo(
        size.width * 0.8332412,
        size.height * 0.05520687,
        size.width * 0.9035588,
        size.height * 0.1754087,
        size.width * 0.8334118,
        size.height * 0.3982820);
    path_0.cubicTo(
        size.width * 0.7301588,
        size.height * 0.7263667,
        size.width * 0.6010059,
        size.height * 0.5002733,
        size.width * 0.2469482,
        size.height * 0.6732000);
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

class SingleLineCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.005348594, size.height * 0.9885057);
    path_0.cubicTo(
        size.width * 0.001876349,
        size.height * 0.7720310,
        size.width * 0.06159844,
        size.height * 0.3149425,
        size.width * 0.3282651,
        size.height * 0.2183908);
    path_0.cubicTo(
        size.width * 0.6615990,
        size.height * 0.09770115,
        size.width * 0.8777448,
        size.height * 0.3678161,
        size.width * 0.9975365,
        size.height * 0.01149425);

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Colors.white.withOpacity(1.0);
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

class TopRightCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.04046243, size.height * 0.8232510);
    path_0.lineTo(size.width * -0.04046243, size.height * -0.02083333);
    path_0.lineTo(size.width * 0.9947919, size.height * -0.02083333);
    path_0.cubicTo(
        size.width * 1.016653,
        size.height * 0.1315281,
        size.width * 0.9656879,
        size.height * 0.1981479,
        size.width * 0.9166879,
        size.height * 0.1981479);
    path_0.cubicTo(
        size.width * 0.8309942,
        size.height * 0.1981479,
        size.width * 0.7500809,
        size.height * 0.2413625,
        size.width * 0.7500809,
        size.height * 0.4291281);
    path_0.cubicTo(
        size.width * 0.7500809,
        size.height * 0.5941135,
        size.width * 0.6896474,
        size.height * 0.7472865,
        size.width * 0.5867457,
        size.height * 0.8670906);
    path_0.cubicTo(
        size.width * 0.3668925,
        size.height * 1.123062,
        size.width * 0.06727861,
        size.height * 0.9532667,
        size.width * -0.04046243,
        size.height * 0.8232510);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFCEC8).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
