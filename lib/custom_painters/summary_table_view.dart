import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SummaryTableView extends StatelessWidget {
  const SummaryTableView({Key? key, required this.correct, required this.wrong, required this.textStyle, required this.dogru, required this.yanlis, required this.toplam}) : super(key: key);

  final int correct;
  final int wrong;
  final TextStyle textStyle;
  final String dogru;
  final String yanlis;
  final String toplam;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SummaryTable(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(dogru, style: textStyle),
              Text(yanlis, style: textStyle),
              Text(toplam, style: textStyle),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$correct", style:  textStyle),
              Text("$wrong", style:  textStyle),
              Text("${correct - wrong}", style:  textStyle),
            ],
          ),
        ],
      ),
    );
  }
}

class SummaryTable extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.06178045, size.height * 0.9878737);
    path0.cubicTo(
        size.width * 0.09000652,
        size.height * 1.015238,
        size.width * 0.9397912,
        size.height * 0.9911544,
        size.width * 0.9749684,
        size.height * 0.9661659);
    path0.cubicTo(
        size.width * 1.007692,
        size.height * 0.9429250,
        size.width * 1.008996,
        size.height * 0.07939598,
        size.width * 0.9749684,
        size.height * 0.03455465);
    path0.cubicTo(
        size.width * 0.9409412,
        size.height * -0.01028668,
        size.width * 0.06070712,
        size.height * -0.007174613,
        size.width * 0.02929940,
        size.height * 0.03455465);
    path0.cubicTo(
        size.width * -0.002108330,
        size.height * 0.07628392,
        size.width * -0.008561097,
        size.height * 0.9196842,
        size.width * 0.06178045,
        size.height * 0.9878737);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * -2.036774, size.height * 0.3797179),
        Offset(size.width * 0.8113875, size.height * 0.3797179), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width * 0.05503380, size.height * 0.9857428);
    path1.cubicTo(
        size.width * 0.08327264,
        size.height * 1.013123,
        size.width * 0.9330446,
        size.height * 0.9890235,
        size.width * 0.9682217,
        size.height * 0.9640503);
    path1.cubicTo(
        size.width * 1.000958,
        size.height * 0.9407941,
        size.width * 1.002262,
        size.height * 0.07728039,
        size.width * 0.9682217,
        size.height * 0.03242373);
    path1.cubicTo(
        size.width * 0.9341818,
        size.height * -0.01243293,
        size.width * 0.05397324,
        size.height * -0.009198222,
        size.width * 0.02255274,
        size.height * 0.03246972);
    path1.cubicTo(
        size.width * -0.008867763,
        size.height * 0.07413767,
        size.width * -0.01533331,
        size.height * 0.9175993,
        size.width * 0.05503380,
        size.height * 0.9857428);
    path1.close();

    Paint paint1 = Paint()..style = PaintingStyle.stroke;
    paint1.strokeWidth = 5;
    paint1.shader = ui.Gradient.linear(
        Offset(size.width * 3.108900, size.height * 6.310900),
        Offset(size.width * 3.108900, size.height * -146.2600), [
      const Color(0xffa3195b).withOpacity(1),
      const Color(0xffa3195b).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path1, paint1);

    Path path2 = Path();
    path2.moveTo(size.width * 0.06236823, size.height * 0.9777096);
    path2.cubicTo(
        size.width * 0.09013429,
        size.height * 1.004630,
        size.width * 0.9125235,
        size.height * 0.9911850,
        size.width * 0.9604017,
        size.height * 0.9563698);
    path2.cubicTo(
        size.width * 0.9923461,
        size.height * 0.9331136,
        size.width * 1.003987,
        size.height * 0.09208953,
        size.width * 0.9604017,
        size.height * 0.04021156);
    path2.cubicTo(
        size.width * 0.9116801,
        size.height * -0.01776790,
        size.width * 0.06133323,
        size.height * -0.0008125096,
        size.width * 0.03042384,
        size.height * 0.04021156);
    path2.cubicTo(
        size.width * -0.0004855547,
        size.height * 0.08123563,
        size.width * -0.006797766,
        size.height * 0.9106239,
        size.width * 0.06236823,
        size.height * 0.9777096);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.shader = ui.Gradient.linear(
        Offset(size.width * -10.71000, size.height * 2.439300),
        Offset(size.width * 6.345200, size.height * 2.439300), [
      const Color(0xffffcc00).withOpacity(0.5),
      const Color(0xffff9700).withOpacity(0.5)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path2, paint2);

    Path path3 = Path();
    path3.moveTo(size.width * 0.06675100, size.height * 0.9645868);
    path3.cubicTo(
        size.width * 0.06675100,
        size.height * 0.9645868,
        size.width * 0.1302053,
        size.height * 1.019316,
        size.width * 0.1470336,
        size.height * 0.8593439);
    path3.cubicTo(
        size.width * 0.1638619,
        size.height * 0.6993715,
        size.width * 0.06899989,
        size.height * 0.5343860,
        size.width * 0.04957770,
        size.height * 0.3947110);
    path3.arcToPoint(Offset(size.width * 0.02555551, size.height * 0.1367776),
        radius:
            Radius.elliptical(size.width * 2.042103, size.height * 2.450054),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.cubicTo(
        size.width * 0.02555551,
        size.height * 0.1367776,
        size.width * -0.02007386,
        size.height * 0.7913843,
        size.width * 0.06675100,
        size.height * 0.9645868);
    path3.close();

    Paint paint3 = Paint()..style = PaintingStyle.fill;
    paint3.shader = ui.Gradient.linear(
        Offset(size.width * 0.001622775, size.height * -12.66748),
        Offset(size.width * 0.6991222, size.height * -12.66748), [
      const Color(0xffffffff).withOpacity(0.3),
      const Color(0xffffffff).withOpacity(0.8),

    ], [0, 1]);
    canvas.drawPath(path3, paint3);

    Path path4 = Path();
    path4.moveTo(size.width * 0.08803874, size.height * 0.9683121);
    path4.cubicTo(
        size.width * 0.08803874,
        size.height * 0.9683121,
        size.width * 0.07487765,
        size.height * 0.9725740,
        size.width * 0.06376100,
        size.height * 0.9583321);
    path4.cubicTo(
        size.width * 0.05264436,
        size.height * 0.9440901,
        size.width * 0.03083273,
        size.height * 0.8666564,
        size.width * 0.03631438,
        size.height * 0.8597424);
    path4.cubicTo(
        size.width * 0.04179604,
        size.height * 0.8528285,
        size.width * 0.09159096,
        size.height * 0.9366856,
        size.width * 0.08803874,
        size.height * 0.9683121);
    path4.close();

    Paint paint4 = Paint()..style = PaintingStyle.fill;
    paint4.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path4, paint4);

    Path path5 = Path();
    path5.moveTo(size.width * 0.9731539, size.height * 0.05919056);
    path5.cubicTo(
        size.width * 0.9705984,
        size.height * 0.06653380,
        size.width * 0.9392929,
        size.height * 0.02949563,
        size.width * 0.9415929,
        size.height * 0.02596965);
    path5.cubicTo(
        size.width * 0.9438929,
        size.height * 0.02244366,
        size.width * 0.9622801,
        size.height * 0.02721141,
        size.width * 0.9664201,
        size.height * 0.03280699);
    path5.cubicTo(
        size.width * 0.9705600,
        size.height * 0.03840258,
        size.width * 0.9748534,
        size.height * 0.05423885,
        size.width * 0.9731539,
        size.height * 0.05919056);
    path5.close();

    Paint paint5 = Paint()..style = PaintingStyle.fill;
    paint5.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path5, paint5);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
