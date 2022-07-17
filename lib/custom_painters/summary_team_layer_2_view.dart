import 'package:flutter/material.dart';

class SummaryTeamLayer2View extends StatelessWidget {
  const SummaryTeamLayer2View({Key? key, required this.score, required this.textStyle}) : super(key: key);
  final String score;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SummaryTeamLayer2(),
      child: Center(child: FittedBox(fit: BoxFit.cover,child: Text(score, style: textStyle))),
    );
  }
}

class SummaryTeamLayer2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path0 = Path();
    path0.moveTo(size.width * 0.8027799, size.height * 0.9492612);
    path0.lineTo(size.width * 0.09059446, size.height * 0.9492612);
    path0.arcToPoint(Offset(size.width * 0.03460974, size.height * 0.8671456),
        radius: Radius.elliptical(
            size.width * 0.05598472, size.height * 0.08207501),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.03460974, size.height * 0.1960951);
    path0.arcToPoint(Offset(size.width * 0.08765955, size.height * 0.1141013),
        radius: Radius.elliptical(
            size.width * 0.05601240, size.height * 0.08211560),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.9064429, size.height * 0.05086053);
    path0.arcToPoint(Offset(size.width * 0.9641443, size.height * 0.1499026),
        radius: Radius.elliptical(
            size.width * 0.05598472, size.height * 0.08207501),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.8575463, size.height * 0.8842345);
    path0.arcToPoint(Offset(size.width * 0.8027799, size.height * 0.9492612),
        radius: Radius.elliptical(
            size.width * 0.05601240, size.height * 0.08211560),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();


    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.color = const Color(0xffa3195b);
    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()..style = PaintingStyle.stroke;
    paint1.strokeWidth = 5;
    paint1.color = const Color(0xffff9700);
    canvas.drawPath(path0, paint1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
