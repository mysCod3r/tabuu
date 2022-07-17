import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SummaryTableNameView extends StatelessWidget {
  const SummaryTableNameView({Key? key, required this.tableName, required this.textStyle}) : super(key: key);
  final TextStyle textStyle;
  final String tableName;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SummaryTeamName(),
      child: Center(child: Text(tableName, style: textStyle)),
    );
  }
}

class SummaryTeamName extends CustomPainter {
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
    paint0.shader = ui.Gradient.linear(Offset(0, size.height * 0.4999531),
        Offset(size.width, size.height * 0.4999531), [
          const Color(0xc4a3195b).withOpacity(1),
          const Color(0xffa3195b).withOpacity(1)
        ], [
          0,
          1
        ]);
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
    paint1.shader = ui.Gradient.linear(Offset(0, size.height * 0.2430000),
        Offset(size.width * 2.517900, size.height * 0.2430000), [
          const Color(0xffffcc00).withOpacity(1),
          const Color(0xffff9700).withOpacity(1)
        ], [
          0,
          1
        ]);
    canvas.drawPath(path1, paint1);

    Path path2 = Path();
    path2.moveTo(size.width * 0.8908614, size.height * 0.8962414);
    path2.lineTo(size.width * 0.4240438, size.height * 0.8962414);
    path2.cubicTo(
        size.width * 0.4228524,
        size.height * 0.8465648,
        size.width * 0.4100242,
        size.height * 0.8073859,
        size.width * 0.3942968,
        size.height * 0.8073859);
    path2.cubicTo(
        size.width * 0.3785694,
        size.height * 0.8073859,
        size.width * 0.3657413,
        size.height * 0.8465648,
        size.width * 0.3645498,
        size.height * 0.8962414);
    path2.lineTo(size.width * 0.1090989, size.height * 0.8962414);
    path2.cubicTo(size.width * 0.04885023, size.height * 0.8962414, 0,
        size.height * 0.7386822, 0, size.height * 0.5443809);
    path2.lineTo(0, size.height * 0.6480457);
    path2.cubicTo(0, size.height * 0.8424407, size.width * 0.04885023,
        size.height, size.width * 0.1090989, size.height);
    path2.lineTo(size.width * 0.8908614, size.height);
    path2.cubicTo(size.width * 0.9511101, size.height, size.width,
        size.height * 0.8424407, size.width, size.height * 0.6480457);
    path2.lineTo(size.width, size.height * 0.5443809);
    path2.cubicTo(
        size.width,
        size.height * 0.7386822,
        size.width * 0.9511101,
        size.height * 0.8962414,
        size.width * 0.8908614,
        size.height * 0.8962414);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.shader = ui.Gradient.linear(Offset(0, size.height * 0.8238000),
        Offset(size.width * 2.517900, size.height * 0.8238000), [
          const Color(0xffffcc00).withOpacity(1),
          const Color(0xffff9700).withOpacity(1)
        ], [
          0,
          1
        ]);
    canvas.drawPath(path2, paint2);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
