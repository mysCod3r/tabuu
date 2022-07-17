import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class KartKatmanView extends StatelessWidget {
  const KartKatmanView({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: KartKatman(),
      child: child,
    );
  }
}

class KartKatman extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path anaKatman = Path();
    anaKatman.moveTo(size.width * 0.01212979, size.height * 0.06177673);
    anaKatman.cubicTo(
        size.width * -0.01524241,
        size.height * 0.09007862,
        size.width * 0.008847387,
        size.height * 0.9397956,
        size.width * 0.03382381,
        size.height * 0.9749686);
    anaKatman.cubicTo(
        size.width * 0.05708357,
        size.height * 1.007689,
        size.width * 0.9205999,
        size.height * 1.009009,
        size.width * 0.9654593,
        size.height * 0.9749686);
    anaKatman.cubicTo(
        size.width * 1.010319,
        size.height * 0.9409277,
        size.width * 1.007168,
        size.height * 0.06070755,
        size.width * 0.9654593,
        size.height * 0.02929245);
    anaKatman.cubicTo(
        size.width * 0.9237502,
        size.height * -0.002122642,
        size.width * 0.08032447,
        size.height * -0.008569182,
        size.width * 0.01212979,
        size.height * 0.06177673);
    anaKatman.close();

    Paint anaKatmanPaint = Paint()..style = PaintingStyle.fill;
    anaKatmanPaint.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.5033648),
        Offset(size.width * 0.9979249, size.height * 0.5033648), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(anaKatman, anaKatmanPaint);

    Path anaKatman2 = Path();
    anaKatman2.moveTo(size.width * 0.01420487, size.height * 0.05503145);
    anaKatman2.cubicTo(
        size.width * -0.01320506,
        size.height * 0.08333333,
        size.width * 0.01092247,
        size.height * 0.9330503,
        size.width * 0.03584229,
        size.height * 0.9682233);
    anaKatman2.cubicTo(
        size.width * 0.05908319,
        size.height * 1.000959,
        size.width * 0.9225995,
        size.height * 1.002264,
        size.width * 0.9674590,
        size.height * 0.9682233);
    anaKatman2.cubicTo(
        size.width * 1.012318,
        size.height * 0.9341824,
        size.width * 1.009187,
        size.height * 0.05397799,
        size.width * 0.9674590,
        size.height * 0.02256289);
    anaKatman2.cubicTo(
        size.width * 0.9257310,
        size.height * -0.008852201,
        size.width * 0.08239955,
        size.height * -0.01529874,
        size.width * 0.01420487,
        size.height * 0.05503145);
    anaKatman2.close();

    Paint anaKatman2Paint = Paint()..style = PaintingStyle.fill;
    anaKatman2Paint.shader = ui.Gradient.linear(
        Offset(size.width * 2.656000, size.height * 6.317200),
        Offset(size.width * 2.656000, 0), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(anaKatman2, anaKatman2Paint);

    Path path2 = Path();
    path2.moveTo(size.width * 0.02227882, size.height * 0.06237421);
    path2.cubicTo(
        size.width * -0.004640634,
        size.height * 0.09014151,
        size.width * 0.008828523,
        size.height * 0.9125157,
        size.width * 0.04363328,
        size.height * 0.9604088);
    path2.cubicTo(
        size.width * 0.06687417,
        size.height * 0.9923899,
        size.width * 0.9079230,
        size.height * 1.003994,
        size.width * 0.9597812,
        size.height * 0.9604088);
    path2.cubicTo(
        size.width * 1.017770,
        size.height * 0.9116667,
        size.width * 1.000830,
        size.height * 0.06132075,
        size.width * 0.9597812,
        size.height * 0.03042453);
    path2.cubicTo(
        size.width * 0.9187323,
        size.height * -0.0004716981,
        size.width * 0.08934163,
        size.height * -0.006808176,
        size.width * 0.02227882,
        size.height * 0.06237421);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.shader = ui.Gradient.linear(
        Offset(size.width * 0.04250000, size.height * 3.170900),
        Offset(size.width * 5.286100, size.height * 3.170900), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path2, paint2);

    Path yamukDesen = Path();
    yamukDesen.moveTo(size.width * 0.03542728, size.height * 0.06674528);
    yamukDesen.cubicTo(
        size.width * 0.03542728,
        size.height * 0.06674528,
        size.width * -0.01927938,
        size.height * 0.1302044,
        size.width * 0.1406527,
        size.height * 0.1470283);
    yamukDesen.cubicTo(
        size.width * 0.3005848,
        size.height * 0.1638522,
        size.width * 0.4656103,
        size.height * 0.06897799,
        size.width * 0.6052820,
        size.height * 0.04954403);
    yamukDesen.arcToPoint(
        Offset(size.width * 0.8632145, size.height * 0.02556604),
        radius:
            Radius.elliptical(size.width * 2.453141, size.height * 2.044670),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    yamukDesen.cubicTo(
        size.width * 0.8632145,
        size.height * 0.02556604,
        size.width * 0.2086210,
        size.height * -0.02007862,
        size.width * 0.03542728,
        size.height * 0.06674528);
    yamukDesen.close();

    Paint yamukDesenPaint = Paint()..style = PaintingStyle.fill;
    yamukDesenPaint.shader = ui.Gradient.linear(
        Offset(size.width * 0.02639125, size.height * 0.08130503),
        Offset(size.width * 0.8632145, size.height * 0.08130503), [
      const Color.fromARGB(25, 163, 25, 92),
      const Color.fromARGB(25, 223, 2, 109),
    ], [
      0,
      1
    ]);
    canvas.drawPath(yamukDesen, yamukDesenPaint);

    Path beyazLeke = Path();
    beyazLeke.moveTo(size.width * 0.03169213, size.height * 0.08805031);
    beyazLeke.cubicTo(
        size.width * 0.03169213,
        size.height * 0.08805031,
        size.width * 0.02742879,
        size.height * 0.07488994,
        size.width * 0.04167138,
        size.height * 0.06378931);
    beyazLeke.cubicTo(
        size.width * 0.05591398,
        size.height * 0.05268868,
        size.width * 0.1333522,
        size.height * 0.03086478,
        size.width * 0.1402566,
        size.height * 0.03633648);
    beyazLeke.cubicTo(
        size.width * 0.1471609,
        size.height * 0.04180818,
        size.width * 0.06334654,
        size.height * 0.09158805,
        size.width * 0.03169213,
        size.height * 0.08805031);
    beyazLeke.close();

    Paint beyazLekePaint = Paint()..style = PaintingStyle.fill;
    beyazLekePaint.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(beyazLeke, beyazLekePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
