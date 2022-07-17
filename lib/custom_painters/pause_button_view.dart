import 'package:flutter/material.dart';

class PauseButtonView extends StatelessWidget {
  const PauseButtonView({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PauseButton(),
      child: Center(child: FittedBox(fit: BoxFit.cover, child: Text(buttonText))),
    );
  }
}

class PauseButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.8909014, 0);
    path0.lineTo(size.width * 0.1090986, 0);
    path0.cubicTo(size.width * 0.04886268, 0, 0, size.height * 0.1575703, 0,
        size.height * 0.3519237);
    path0.lineTo(0, size.height * 0.6480763);
    path0.cubicTo(0, size.height * 0.8424297, size.width * 0.04886268,
        size.height, size.width * 0.1090986, size.height);
    path0.lineTo(size.width * 0.8909014, size.height);
    path0.cubicTo(size.width * 0.9511373, size.height, size.width,
        size.height * 0.8424297, size.width, size.height * 0.6480763);
    path0.lineTo(size.width, size.height * 0.3519237);
    path0.cubicTo(size.width, size.height * 0.1575703, size.width * 0.9511373,
        0, size.width * 0.8909014, 0);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.color = const Color(0xffa3195b).withOpacity(1.0);
    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width * 0.8909014, 0);
    path1.lineTo(size.width * 0.1090986, 0);
    path1.cubicTo(size.width * 0.04886268, 0, 0, size.height * 0.1575703, 0,
        size.height * 0.3519237);
    path1.lineTo(0, size.height * 0.4556119);
    path1.cubicTo(
        0,
        size.height * 0.2612586,
        size.width * 0.04886268,
        size.height * 0.1036882,
        size.width * 0.1090986,
        size.height * 0.1036882);
    path1.lineTo(size.width * 0.8909014, size.height * 0.1036882);
    path1.cubicTo(size.width * 0.9511373, size.height * 0.1036882, size.width,
        size.height * 0.2612586, size.width, size.height * 0.4556119);
    path1.lineTo(size.width, size.height * 0.3519237);
    path1.cubicTo(size.width, size.height * 0.1575703, size.width * 0.9511373,
        0, size.width * 0.8909014, 0);
    path1.close();

    Paint paint1 = Paint()..style = PaintingStyle.fill;
    paint1.color = const Color(0xffa3195b).withOpacity(1.0);
    canvas.drawPath(path1, paint1);

    Path path2 = Path();
    path2.moveTo(size.width * 0.8909014, size.height * 0.8963118);
    path2.lineTo(size.width * 0.4240522, size.height * 0.8963118);
    path2.cubicTo(
        size.width * 0.4228728,
        size.height * 0.8466050,
        size.width * 0.4100253,
        size.height * 0.8074361,
        size.width * 0.3943134,
        size.height * 0.8074361);
    path2.cubicTo(
        size.width * 0.3786015,
        size.height * 0.8074361,
        size.width * 0.3657540,
        size.height * 0.8466050,
        size.width * 0.3645746,
        size.height * 0.8963118);
    path2.lineTo(size.width * 0.1090986, size.height * 0.8963118);
    path2.cubicTo(size.width * 0.04886268, size.height * 0.8963118, 0,
        size.height * 0.7387414, 0, size.height * 0.5443881);
    path2.lineTo(0, size.height * 0.6480763);
    path2.cubicTo(0, size.height * 0.8424297, size.width * 0.04886268,
        size.height, size.width * 0.1090986, size.height);
    path2.lineTo(size.width * 0.8909014, size.height);
    path2.cubicTo(size.width * 0.9511373, size.height, size.width,
        size.height * 0.8424297, size.width, size.height * 0.6480763);
    path2.lineTo(size.width, size.height * 0.5443881);
    path2.cubicTo(
        size.width,
        size.height * 0.7387414,
        size.width * 0.9511373,
        size.height * 0.8963118,
        size.width * 0.8909014,
        size.height * 0.8963118);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.color = const Color(0xffa3195b).withOpacity(1.0);
    canvas.drawPath(path2, paint2);

    Paint paint3 = Paint()..style = PaintingStyle.fill;
    paint3.color = const Color(0xffa3195b).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.4494524, size.height * 0.7518640),
            width: size.width * 0.03445661,
            height: size.height * 0.1111442),
        paint3);

    Paint paint4 = Paint()..style = PaintingStyle.fill;
    paint4.color = const Color(0xffa3195b).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3977675, size.height * 0.6926136),
            width: size.width * 0.01609099,
            height: size.height * 0.05189383),
        paint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
