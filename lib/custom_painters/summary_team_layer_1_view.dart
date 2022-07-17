import 'package:flutter/material.dart';

class SummaryTeamLayer1View extends StatelessWidget {
  const SummaryTeamLayer1View({Key? key, required this.score, required this.textStyle}) : super(key: key);
  final String score;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SummaryTeamLayer1(),
      child: Center(child: FittedBox(fit:BoxFit.cover,child: Text(score, style: textStyle))),
    );
  }
}

class SummaryTeamLayer1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.1747330, size.height);
    path0.lineTo(size.width * 0.9400006, size.height);
    path0.arcToPoint(Offset(size.width * 1.000149, size.height * 0.9086104),
        radius: Radius.elliptical(
            size.width * 0.06014814, size.height * 0.09134442),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.lineTo(size.width * 1.000149, size.height * 0.1617727);
    path0.arcToPoint(Offset(size.width * 0.9429753, size.height * 0.07051861),
        radius: Radius.elliptical(
            size.width * 0.06014814, size.height * 0.09134442),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.lineTo(size.width * 0.06336080, 0);
    path0.arcToPoint(Offset(size.width * 0.001338608, size.height * 0.1103632),
        radius: Radius.elliptical(
            size.width * 0.06014814, size.height * 0.09134442),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.lineTo(size.width * 0.1160127, size.height * 0.9276292);
    path0.arcToPoint(Offset(size.width * 0.1747330, size.height),
        radius: Radius.elliptical(
            size.width * 0.06017789, size.height * 0.09138959),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.color = const Color(0xffa3195b).withOpacity(1.0);
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
