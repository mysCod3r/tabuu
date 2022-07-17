import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ButtonActionsView extends StatelessWidget {
  const ButtonActionsView({Key? key, required this.color, required this.buttonName, required this.textStyle})
      : super(key: key);
  final String buttonName;
  final TextStyle textStyle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Buttonactions(color: color),
      child: Center(
        child: Text(buttonName, style: textStyle),
      ),
    );
  }
}

class Buttonactions extends CustomPainter {
  final Color color;
  const Buttonactions({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.8908614, 0);
    path0.lineTo(size.width * 0.1090989, 0);
    path0.cubicTo(size.width * 0.04885023, 0, 0, size.height * 0.1575593, 0,
        size.height * 0.3518605);
    path0.lineTo(0, size.height * 0.6480457);
    path0.cubicTo(0, size.height * 0.8424407, size.width * 0.04885023,
        size.height, size.width * 0.1090989, size.height);
    path0.lineTo(size.width * 0.8908614, size.height);
    path0.cubicTo(size.width * 0.9511101, size.height, size.width,
        size.height * 0.8424407, size.width, size.height * 0.6480457);
    path0.lineTo(size.width, size.height * 0.3518605);
    path0.cubicTo(size.width, size.height * 0.1575593, size.width * 0.9511101,
        0, size.width * 0.8908614, 0);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
//    paint0.color = const Color(0xff008d36).withOpacity(1.0);
    paint0.color = color;
    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width * 0.8908614, 0);
    path1.lineTo(size.width * 0.1090989, 0);
    path1.cubicTo(size.width * 0.04885023, 0, 0, size.height * 0.1575593, 0,
        size.height * 0.3518605);
    path1.lineTo(0, size.height * 0.4556191);
    path1.cubicTo(
        0,
        size.height * 0.2612241,
        size.width * 0.04885023,
        size.height * 0.1036648,
        size.width * 0.1090989,
        size.height * 0.1036648);
    path1.lineTo(size.width * 0.8908614, size.height * 0.1036648);
    path1.cubicTo(size.width * 0.9511101, size.height * 0.1036648, size.width,
        size.height * 0.2612241, size.width, size.height * 0.4556191);
    path1.lineTo(size.width, size.height * 0.3518605);
    path1.cubicTo(size.width, size.height * 0.1575593, size.width * 0.9511101,
        0, size.width * 0.8908614, 0);
    path1.close();

    Paint paint1 = Paint()..style = PaintingStyle.fill;
    paint1.shader = ui.Gradient.linear(Offset(0, size.height * 0.2277627),
        Offset(size.width, size.height * 0.2277627), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path1, paint1);

    Paint paint3 = Paint()..style = PaintingStyle.fill;
//    paint3.color = const Color.fromARGB(255, 15, 202, 40).withOpacity(1.0);
    paint3.color = color;
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.4494221, size.height * 0.7518043),
            width: size.width * 0.03447317,
            height: size.height * 0.1111632),
        paint3);

    Paint paint4 = Paint()..style = PaintingStyle.fill;
//    paint4.color = const Color.fromARGB(255, 15, 202, 40).withOpacity(1.0);
    paint4.color = color;
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3977521, size.height * 0.6925673),
            width: size.width * 0.01604512,
            height: size.height * 0.05192614),
        paint4);

    Path deneme = Path();
    deneme.moveTo(size.width * 0.8908614, size.height * 0.75);
    deneme.cubicTo(size.width * 0.7487500, size.height * 0.75, size.width * 0.8,
        size.height * 0.75, size.width, size.height * 0.75);
    deneme.quadraticBezierTo(
        size.width, size.height, size.width * 0.8750000, size.height);
    deneme.lineTo(size.width * 0.1250000, size.height);
    deneme.quadraticBezierTo(0, size.height, 0, size.height * 0.75);
    deneme.close();

    Paint denemePaint = Paint()..style = PaintingStyle.fill;
    denemePaint.shader = ui.Gradient.linear(Offset(0, size.height * 0.2277627),
        Offset(size.width, size.height * 0.2277627), [
      // const Color.fromARGB(255, 0, 253, 63).withOpacity(0.2),
      // const Color.fromARGB(255, 42, 252, 35).withOpacity(0.2)
      color,
      color,
    ], [
      0,
      1
    ]);
    canvas.drawPath(deneme, denemePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
