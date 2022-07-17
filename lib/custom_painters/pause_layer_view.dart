import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:tabuu/custom_painters/pause_button_view.dart';

class PauseLayerView extends StatelessWidget {
  const PauseLayerView({Key? key, required this.goAnaMenu, required this.goResume, required this.buttonText1, required this.buttonText2}) : super(key: key);

  final VoidCallback goAnaMenu;
  final VoidCallback goResume;
  final String buttonText1;
  final String buttonText2;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PauseLayer(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Button(onTap: goAnaMenu,buttonText: buttonText1),
          _Button(onTap: goResume,buttonText: buttonText2),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.onTap, required this.buttonText,
  }) : super(key: key);

  final VoidCallback onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 120,
        height: 50,
        child: PauseButtonView(buttonText: buttonText),
      ),
    );
  }
}

class PauseLayer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.06177735, size.height * 0.9878302);
    path0.cubicTo(
        size.width * 0.09001802,
        size.height * 1.015236,
        size.width * 0.9397893,
        size.height * 0.9911321,
        size.width * 0.9749619,
        size.height * 0.9661321);
    path0.cubicTo(
        size.width * 1.007694,
        size.height * 0.9429245,
        size.width * 1.008998,
        size.height * 0.07933962,
        size.width * 0.9749619,
        size.height * 0.03457547);
    path0.cubicTo(
        size.width * 0.9409261,
        size.height * -0.01018868,
        size.width * 0.06070983,
        size.height * -0.007169811,
        size.width * 0.02929433,
        size.height * 0.03457547);
    path0.cubicTo(
        size.width * -0.002121170,
        size.height * 0.07632075,
        size.width * -0.008567864,
        size.height * 0.9198113,
        size.width * 0.06177735,
        size.height * 0.9878302);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.3530570, size.height * 0.5114623),
        Offset(size.width * 0.6463469, size.height * 0.5114623),
        [const Color(0xffffcc00).withOpacity(1), const Color(0xffff9700).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width * 0.05503951, size.height * 0.9858491);
    path1.cubicTo(
        size.width * 0.08328019,
        size.height * 1.013255,
        size.width * 0.9330514,
        size.height * 0.9891509,
        size.width * 0.9682240,
        size.height * 0.9641509);
    path1.cubicTo(
        size.width * 1.000957,
        size.height * 0.9409434,
        size.width * 1.002274,
        size.height * 0.07735849,
        size.width * 0.9682240,
        size.height * 0.03254717);
    path1.cubicTo(
        size.width * 0.9341744,
        size.height * -0.01226415,
        size.width * 0.05397200,
        size.height * -0.009433962,
        size.width * 0.02255650,
        size.height * 0.03245283);
    path1.cubicTo(
        size.width * -0.008859005,
        size.height * 0.07433962,
        size.width * -0.01525024,
        size.height * 0.9175943,
        size.width * 0.05503951,
        size.height * 0.9858491);
    path1.close();

    Paint paint1 = Paint()..style = PaintingStyle.fill;
    paint1.shader = ui.Gradient.linear(
        Offset(size.width * 3.608700, size.height * 4.617900),
        Offset(size.width * 3.608700, size.height * -254.6500),
        [const Color(0xffffcc00).withOpacity(1), const Color(0xffff9700).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path1, paint1);

    Path path2 = Path();
    path2.moveTo(size.width * 0.06238736, size.height * 0.9776887);
    path2.cubicTo(
        size.width * 0.09011507,
        size.height * 1.004623,
        size.width * 0.9125329,
        size.height * 0.9911792,
        size.width * 0.9604187,
        size.height * 0.9563679);
    path2.cubicTo(
        size.width * 0.9924026,
        size.height * 0.9331132,
        size.width * 1.004007,
        size.height * 0.09207547,
        size.width * 0.9604187,
        size.height * 0.04023585);
    path2.cubicTo(
        size.width * 0.9116872,
        size.height * -0.01778302,
        size.width * 0.06131984,
        size.height * -0.0008018868,
        size.width * 0.03050049,
        size.height * 0.04023585);
    path2.cubicTo(
        size.width * -0.0003188687,
        size.height * 0.08127358,
        size.width * -0.006807154,
        size.height * 0.9106604,
        size.width * 0.06238736,
        size.height * 0.9776887);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.shader = ui.Gradient.linear(
        Offset(size.width * 2.563600, size.height * 1.049700),
        Offset(size.width * 4.660500, size.height * 1.049700),
        [const Color(0xffffcc00).withOpacity(1), const Color(0xffff9700).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
