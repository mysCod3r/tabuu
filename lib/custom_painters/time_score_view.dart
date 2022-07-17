import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class TimeScoreView extends StatelessWidget {
  const TimeScoreView({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TimeScore(),
      child: child,
    );
  }
}

class TimeScore extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.8909142, 0);
    path0.lineTo(size.width * 0.1091211, 0);
    path0.cubicTo(size.width * 0.04885545, 0, 0, size.height * 0.1575593, 0,
        size.height * 0.3518605);
    path0.lineTo(0, size.height * 0.6480457);
    path0.cubicTo(0, size.height * 0.8424407, size.width * 0.04885545,
        size.height, size.width * 0.1091211, size.height);
    path0.lineTo(size.width * 0.8909142, size.height);
    path0.cubicTo(size.width * 0.9511799, size.height, size.width,
        size.height * 0.8424407, size.width, size.height * 0.6480457);
    path0.lineTo(size.width, size.height * 0.3518605);
    path0.cubicTo(size.width, size.height * 0.1575593, size.width * 0.9511799,
        0, size.width * 0.8909142, 0);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.shader = ui.Gradient.linear(Offset(0, size.height * 0.4999531),
        Offset(size.width, size.height * 0.4999531), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width * 0.8909142, 0);
    path1.lineTo(size.width * 0.1091211, 0);
    path1.cubicTo(size.width * 0.04885545, 0, 0, size.height * 0.1575593, 0,
        size.height * 0.3518605);
    path1.lineTo(0, size.height * 0.4556191);
    path1.cubicTo(
        0,
        size.height * 0.2612241,
        size.width * 0.04885545,
        size.height * 0.1036648,
        size.width * 0.1091211,
        size.height * 0.1036648);
    path1.lineTo(size.width * 0.8909142, size.height * 0.1036648);
    path1.cubicTo(size.width * 0.9511799, size.height * 0.1036648, size.width,
        size.height * 0.2612241, size.width, size.height * 0.4556191);
    path1.lineTo(size.width, size.height * 0.3518605);
    path1.cubicTo(size.width, size.height * 0.1575593, size.width * 0.9511799,
        0, size.width * 0.8909142, 0);
    path1.close();

    Paint paint1 = Paint()..style = PaintingStyle.fill;
    paint1.shader = ui.Gradient.linear(Offset(0, size.height * 0.2430000),
        Offset(size.width * 2.830800, size.height * 0.2430000), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path1, paint1);

    Path path2 = Path();
    path2.moveTo(size.width * 0.8909142, size.height * 0.8962414);
    path2.lineTo(size.width * 0.4239084, size.height * 0.8962414);
    path2.cubicTo(
        size.width * 0.4227427,
        size.height * 0.8465648,
        size.width * 0.4097782,
        size.height * 0.8073859,
        size.width * 0.3941642,
        size.height * 0.8073859);
    path2.cubicTo(
        size.width * 0.3785502,
        size.height * 0.8073859,
        size.width * 0.3656210,
        size.height * 0.8465648,
        size.width * 0.3644200,
        size.height * 0.8962414);
    path2.lineTo(size.width * 0.1091211, size.height * 0.8962414);
    path2.cubicTo(size.width * 0.04885545, size.height * 0.8962414, 0,
        size.height * 0.7386822, 0, size.height * 0.5443809);
    path2.lineTo(0, size.height * 0.6480457);
    path2.cubicTo(0, size.height * 0.8424407, size.width * 0.04885545,
        size.height, size.width * 0.1091211, size.height);
    path2.lineTo(size.width * 0.8909142, size.height);
    path2.cubicTo(size.width * 0.9511799, size.height, size.width,
        size.height * 0.8424407, size.width, size.height * 0.6480457);
    path2.lineTo(size.width, size.height * 0.5443809);
    path2.cubicTo(
        size.width,
        size.height * 0.7386822,
        size.width * 0.9511799,
        size.height * 0.8962414,
        size.width * 0.8909142,
        size.height * 0.8962414);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.shader = ui.Gradient.linear(Offset(0, size.height * 0.8238000),
        Offset(size.width * 2.830800, size.height * 0.8238000), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path2, paint2);

    Paint paint3 = Paint()..style = PaintingStyle.fill;
    paint3.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.4494489, size.height * 0.7518043),
            width: size.width * 0.03447789,
            height: size.height * 0.1111632),
        paint3);

    Paint paint4 = Paint()..style = PaintingStyle.fill;
    paint4.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3977674, size.height * 0.6925673),
            width: size.width * 0.01610852,
            height: size.height * 0.05192614),
        paint4);

    Path path5 = Path();
    path5.moveTo(size.width, 0);
    path5.lineTo(size.width * 0.9117211, 0);
    path5.arcToPoint(Offset(size.width * 1.000035, size.height * 0.2343237),
        radius:
            Radius.elliptical(size.width * 0.08831426, size.height * 0.2343237),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.lineTo(size.width * 1, size.height * 0.7656763);
    path5.arcToPoint(Offset(size.width * 0.9117211, size.height),
        radius:
            Radius.elliptical(size.width * 0.08831426, size.height * 0.2343237),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.lineTo(size.width * 0.6801258, size.height);
    path5.arcToPoint(Offset(size.width * 0.6801258, size.height),
        radius: const Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.lineTo(size.width * 0.4, 0);
    path5.arcToPoint(Offset(size.width * 0.6801258, 0),
        radius: const Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.close();

    Paint paint5 = Paint()..style = PaintingStyle.fill;
    paint5.color = const Color(0xffa3195b).withOpacity(1.0);
    canvas.drawPath(path5, paint5);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
