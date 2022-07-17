import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ButtonMenuView extends StatelessWidget {
  const ButtonMenuView({Key? key, required this.style, required this.text}) : super(key: key);
  final TextStyle style;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ButtonMenu(),
      child: Center(
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(text, style: style),
            )),
      ),
    );
  }
}

class ButtonMenu extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9612175, size.height * 0.8856031);
    path_0.arcToPoint(Offset(size.width * 0.9581149, size.height * 0.8913100),
        radius: Radius.elliptical(
            size.width * 0.02171822, size.height * 0.04539559),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.8726692,
        size.height * 1.037160,
        size.width * 0.1322329,
        size.height * 1.032036,
        size.width * 0.02913344,
        size.height * 0.9009728);
    path_0.arcToPoint(Offset(size.width * 0.01861562, size.height * 0.8794423),
        radius: Radius.elliptical(
            size.width * 0.02658931, size.height * 0.05557717),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * -0.01811920,
        size.height * 0.7202983,
        size.width * 0.001737458,
        size.height * 0.2414397,
        size.width * 0.05981819,
        size.height * 0.1378729);
    path_0.cubicTo(
        size.width * 0.1221495,
        size.height * 0.02684825,
        size.width * 0.8669294,
        size.height * -0.02341115,
        size.width * 0.9440601,
        size.height * 0.1177691);
    path_0.cubicTo(
        size.width * 1.000403,
        size.height * 0.2212711,
        size.width * 1.027334,
        size.height * 0.7405318,
        size.width * 0.9612175,
        size.height * 0.8856031);
    path_0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.4999845, size.height),
        Offset(size.width * 0.4999845, size.height * 0.03145266), [
      const Color(0xff8b9ad1).withOpacity(1),
      const Color(0xffcee0ff).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint0);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.01842946, size.height * 0.8479248);
    path_1.cubicTo(
        size.width * 0.05370606,
        size.height * 1.001492,
        size.width * 0.8885235,
        size.height * 1.013748,
        size.width * 0.9612485,
        size.height * 0.8544099);
    path_1.cubicTo(
        size.width * 1.027303,
        size.height * 0.7093385,
        size.width * 1.000434,
        size.height * 0.1900778,
        size.width * 0.9439360,
        size.height * 0.08651102);
    path_1.cubicTo(
        size.width * 0.8669294,
        size.height * -0.05453956,
        size.width * 0.1221495,
        size.height * -0.004280156,
        size.width * 0.05969408,
        size.height * 0.1066796);
    path_1.cubicTo(
        size.width * 0.001706432,
        size.height * 0.2099870,
        size.width * -0.01808818,
        size.height * 0.6887808,
        size.width * 0.01842946,
        size.height * 0.8479248);
    path_1.close();

    Paint paint1 = Paint()..style = PaintingStyle.fill;
    paint1.shader = ui.Gradient.linear(
        Offset(size.width * 0.4999845, size.height * 0.9685473),
        Offset(size.width * 0.4999845, size.height * 0.006485084), [
      const Color(0xffcadcff).withOpacity(1),
      const Color(0xffffffff).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_1, paint1);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.05274425, size.height * 0.7956550);
    path_2.cubicTo(
        size.width * 0.05274425,
        size.height * 0.7956550,
        size.width * 0.1654618,
        size.height * 0.9217899,
        size.width * 0.5127362,
        size.height * 0.9217899);
    path_2.cubicTo(
        size.width * 0.8600105,
        size.height * 0.9217899,
        size.width * 0.9155782,
        size.height * 0.7956550,
        size.width * 0.9155782,
        size.height * 0.7956550);
    path_2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint2);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.9582079, size.height * 0.7955253);
    path_3.lineTo(size.width * 0.9582079, size.height * 0.8913100);
    path_3.cubicTo(
        size.width * 0.8727622,
        size.height * 1.037160,
        size.width * 0.1323260,
        size.height * 1.032036,
        size.width * 0.02922652,
        size.height * 0.9009728);
    path_3.lineTo(size.width * 0.03136732, size.height * 0.8721790);
    path_3.lineTo(size.width * 0.05274425, size.height * 0.7955253);
    path_3.lineTo(size.width * 0.9431913, size.height * 0.7091440);
    path_3.close();

    Paint paint3 = Paint()..style = PaintingStyle.fill;
    paint3.color = const Color(0xffced6ff).withOpacity(1.0);
    canvas.drawPath(path_3, paint3);

    Path path4 = Path();
    path4.moveTo(size.width * 0.04452235, size.height * 0.7782101);
    path4.cubicTo(
        size.width * 0.07654122,
        size.height * 0.9176394,
        size.width * 0.8519748,
        size.height * 0.9568093,
        size.width * 0.9179672,
        size.height * 0.8118677);
    path4.cubicTo(
        size.width * 0.9779715,
        size.height * 0.6801556,
        size.width * 0.9535540,
        size.height * 0.2087549,
        size.width * 0.9022680,
        size.height * 0.1146563);
    path4.cubicTo(
        size.width * 0.8323664,
        size.height * -0.01335927,
        size.width * 0.1433403,
        size.height * 0.07658885,
        size.width * 0.08687289,
        size.height * 0.1774319);
    path4.cubicTo(
        size.width * 0.03412863,
        size.height * 0.2714008,
        size.width * 0.01132450,
        size.height * 0.6337873,
        size.width * 0.04452235,
        size.height * 0.7782101);
    path4.close();

    Paint paint4 = Paint()..style = PaintingStyle.fill;
    paint4.shader = ui.Gradient.radial(
        Offset(size.width * 0.5060966, size.height * 0.8432555),
        size.width * 0.3571096, [
      const Color(0xffffbd00).withOpacity(1),
      const Color(0xffff772c).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path4, paint4);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.04709751, size.height * 0.7536965);
    path_5.cubicTo(
        size.width * 0.07899227,
        size.height * 0.8880674,
        size.width * 0.8498030,
        size.height * 0.8977302,
        size.width * 0.9155782,
        size.height * 0.7579767);
    path_5.cubicTo(
        size.width * 0.9753343,
        size.height * 0.6309987,
        size.width * 0.9518476,
        size.height * 0.2110246,
        size.width * 0.9007477,
        size.height * 0.1203632);
    path_5.cubicTo(
        size.width * 0.8310943,
        size.height * -0.002853437,
        size.width * 0.1446434,
        size.height * 0.08359274,
        size.width * 0.08826906,
        size.height * 0.1808042);
    path_5.cubicTo(
        size.width * 0.03567994,
        size.height * 0.2714008,
        size.width * 0.01402377,
        size.height * 0.6143320,
        size.width * 0.04709751,
        size.height * 0.7536965);
    path_5.close();

    Paint paint5 = Paint()..style = PaintingStyle.fill;
    paint5.shader = ui.Gradient.linear(
        Offset(size.width * 0.4911731, size.height * 0.8586900),
        Offset(size.width * 0.4911731, size.height * 0.05933852), [
      const Color(0xfffff300).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_5, paint5);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.05668456, size.height * 0.7417639);
    path_6.cubicTo(
        size.width * 0.08789675,
        size.height * 0.8722438,
        size.width * 0.8420465,
        size.height * 0.8815175,
        size.width * 0.9063945,
        size.height * 0.7459144);
    path_6.cubicTo(
        size.width * 0.9648785,
        size.height * 0.6226978,
        size.width * 0.9418882,
        size.height * 0.2151751,
        size.width * 0.8918743,
        size.height * 0.1271725);
    path_6.cubicTo(
        size.width * 0.8237411,
        size.height * 0.007328145,
        size.width * 0.1520276,
        size.height * 0.09150454,
        size.width * 0.09695635,
        size.height * 0.1858625);
    path_6.cubicTo(
        size.width * 0.04554621,
        size.height * 0.2738003,
        size.width * 0.02435543,
        size.height * 0.6066148,
        size.width * 0.05668456,
        size.height * 0.7417639);
    path_6.close();

    Paint paint6 = Paint()..style = PaintingStyle.fill;
    paint6.shader = ui.Gradient.linear(
        Offset(size.width * 0.4911731, size.height * 0.8437095),
        Offset(size.width * 0.4911731, size.height * 0.06802853), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_6, paint6);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.09500171, size.height * 0.1864462);
    path_7.cubicTo(
        size.width * 0.09500171,
        size.height * 0.1864462,
        size.width * 0.6208929,
        size.height * -0.03644617,
        size.width * 0.8937048,
        size.height * 0.1293126);
    path_7.arcToPoint(Offset(size.width * 0.9286712, size.height * 0.2914397),
        radius:
            Radius.elliptical(size.width * 0.2106667, size.height * 0.4403372),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_7.cubicTo(
        size.width * 0.9286712,
        size.height * 0.2914397,
        size.width * 0.8293879,
        size.height * 0.3656939,
        size.width * 0.6889330,
        size.height * 0.3790532);
    path_7.cubicTo(
        size.width * 0.5484782,
        size.height * 0.3924125,
        size.width * 0.4018492,
        size.height * 0.2264591,
        size.width * 0.2833607,
        size.height * 0.2016861);
    path_7.cubicTo(
        size.width * 0.1648723,
        size.height * 0.1769131,
        size.width * 0.09500171,
        size.height * 0.1864462,
        size.width * 0.09500171,
        size.height * 0.1864462);
    path_7.close();

    Paint paint7 = Paint()..style = PaintingStyle.fill;
    paint7.shader = ui.Gradient.radial(
        Offset(size.width * -104.4200, size.height * -1137.680),
        size.width * 0.03700000, [
      const Color(0xff00b359).withOpacity(1),
      const Color.fromARGB(255, 255, 241, 75).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_7, paint7);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.8910676, size.height * 0.7484436);
    path_8.cubicTo(
        size.width * 0.8910676,
        size.height * 0.7484436,
        size.width * 0.5392945,
        size.height * 0.8781453,
        size.width * 0.09633583,
        size.height * 0.7636835);
    path_8.cubicTo(
        size.width * 0.09633583,
        size.height * 0.7636835,
        size.width * 0.3841023,
        size.height * 0.8155642,
        size.width * 0.5120846,
        size.height * 0.7636835);
    path_8.cubicTo(
        size.width * 0.7294840,
        size.height * 0.6751621,
        size.width * 0.8339487,
        size.height * 0.6489624,
        size.width * 0.8910676,
        size.height * 0.7484436);
    path_8.close();

    Paint paint8 = Paint()..style = PaintingStyle.fill;
    paint8.shader = ui.Gradient.radial(
        Offset(size.width * -104.4200, size.height * -1137.680),
        size.width * 0.03700000, [
      const Color.fromARGB(255, 255, 255, 255).withOpacity(1),
      const Color.fromARGB(255, 255, 241, 46).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_8, paint8);

    Path path9 = Path();
    path9.moveTo(size.width * 0.07530018, size.height * 0.2428016);
    path9.arcToPoint(Offset(size.width * 0.1119109, size.height * 0.1701038),
        radius:
            Radius.elliptical(size.width * 0.08311874, size.height * 0.1737354),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path9.cubicTo(
        size.width * 0.1375074,
        size.height * 0.1447471,
        size.width * 0.2103565,
        size.height * 0.1193256,
        size.width * 0.2145140,
        size.height * 0.1257458);
    path9.cubicTo(
        size.width * 0.2186715,
        size.height * 0.1321660,
        size.width * 0.1790202,
        size.height * 0.1621271,
        size.width * 0.1586671,
        size.height * 0.1776265);
    path9.cubicTo(
        size.width * 0.1383140,
        size.height * 0.1931258,
        size.width * 0.08575595,
        size.height * 0.2549287,
        size.width * 0.07530018,
        size.height * 0.2428016);
    path9.close();

    Paint paint9 = Paint()..style = PaintingStyle.fill;
    paint9.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path9, paint9);

    Path path10 = Path();
    path10.moveTo(size.width * 0.07303528, size.height * 0.2555123);
    path10.cubicTo(
        size.width * 0.06776085,
        size.height * 0.2571336,
        size.width * 0.05460581,
        size.height * 0.3426070,
        size.width * 0.05541249,
        size.height * 0.3566148);
    path10.cubicTo(
        size.width * 0.05621917,
        size.height * 0.3706226,
        size.width * 0.07201142,
        size.height * 0.3262646,
        size.width * 0.07449350,
        size.height * 0.3026589);
    path10.arcToPoint(Offset(size.width * 0.07303528, size.height * 0.2555123),
        radius: Radius.elliptical(
            size.width * 0.04675623, size.height * 0.09773022),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.close();

    Paint paint10 = Paint()..style = PaintingStyle.fill;
    paint10.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path10, paint10);

    Path path11 = Path();
    path11.moveTo(size.width * 0.1699296, size.height * 0.3136835);
    path11.arcToPoint(Offset(size.width * 0.1595979, size.height * 0.3380674),
        radius: Radius.elliptical(
            size.width * 0.01101424, size.height * 0.02302205),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path11.arcToPoint(Offset(size.width * 0.1699296, size.height * 0.3136835),
        radius: Radius.elliptical(
            size.width * 0.01104527, size.height * 0.02308690),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path11.close();

    Path path12 = Path();
    path12.moveTo(size.width * 0.1712637, size.height * 0.3302205);
    path12.arcToPoint(Offset(size.width * 0.1684093, size.height * 0.3367056),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path12.arcToPoint(Offset(size.width * 0.1712637, size.height * 0.3302205),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.close();

    Paint paint12 = Paint()..style = PaintingStyle.fill;
    paint12.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path12, paint12);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.1861562, size.height * 0.2313878);
    path_14.arcToPoint(Offset(size.width * 0.1833018, size.height * 0.2378729),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_14.arcToPoint(Offset(size.width * 0.1861562, size.height * 0.2313878),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.close();

    Paint paint14 = Paint()..style = PaintingStyle.fill;
    paint14.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path_14, paint14);

    Path path16 = Path();
    path16.moveTo(size.width * 0.1774068, size.height * 0.5149157);
    path16.arcToPoint(Offset(size.width * 0.1745214, size.height * 0.5214008),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path16.arcToPoint(Offset(size.width * 0.1774068, size.height * 0.5149157),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.close();

    Paint paint16 = Paint()..style = PaintingStyle.fill;
    paint16.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path16, paint16);

    Path path18 = Path();
    path18.moveTo(size.width * 0.1279514, size.height * 0.2105058);
    path18.arcToPoint(Offset(size.width * 0.1199466, size.height * 0.2293774),
        radius: Radius.elliptical(
            size.width * 0.008532158, size.height * 0.01783398),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path18.arcToPoint(Offset(size.width * 0.1279514, size.height * 0.2105058),
        radius: Radius.elliptical(
            size.width * 0.008532158, size.height * 0.01783398),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path18.close();

    Paint paint18 = Paint()..style = PaintingStyle.fill;
    paint18.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path18, paint18);

    Path path20 = Path();
    path20.moveTo(size.width * 0.7604170, size.height * 0.6769780);
    path20.arcToPoint(Offset(size.width * 0.7523812, size.height * 0.6958495),
        radius: Radius.elliptical(
            size.width * 0.008532158, size.height * 0.01783398),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.7604170, size.height * 0.6769780),
        radius: Radius.elliptical(
            size.width * 0.008532158, size.height * 0.01783398),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.close();

    Paint paint20 = Paint()..style = PaintingStyle.fill;
    paint20.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path20, paint20);

    Path path22 = Path();
    path22.moveTo(size.width * 0.9174708, size.height * 0.6220493);
    path22.arcToPoint(Offset(size.width * 0.9136546, size.height * 0.6310636),
        radius: Radius.elliptical(
            size.width * 0.004064410, size.height * 0.008495460),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path22.arcToPoint(Offset(size.width * 0.9174708, size.height * 0.6220493),
        radius: Radius.elliptical(
            size.width * 0.004033384, size.height * 0.008430610),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.close();

    Paint paint22 = Paint()..style = PaintingStyle.fill;
    paint22.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path22, paint22);

    Path path24 = Path();
    path24.moveTo(size.width * 0.2140796, size.height * 0.6780804);
    path24.arcToPoint(Offset(size.width * 0.2145450, size.height * 0.6950713),
        radius: Radius.elliptical(
            size.width * 0.004064410, size.height * 0.008495460),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path24.arcToPoint(Offset(size.width * 0.2140796, size.height * 0.6780804),
        radius: Radius.elliptical(
            size.width * 0.004064410, size.height * 0.008495460),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path24.close();

    Paint paint24 = Paint()..style = PaintingStyle.fill;
    paint24.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path24, paint24);

    Path path26 = Path();
    path26.moveTo(size.width * 0.6355682, size.height * 0.5521401);
    path26.arcToPoint(Offset(size.width * 0.6336446, size.height * 0.5566148),
        radius: Radius.elliptical(
            size.width * 0.002047718, size.height * 0.004280156),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path26.arcToPoint(Offset(size.width * 0.6355682, size.height * 0.5521401),
        radius: Radius.elliptical(
            size.width * 0.002047718, size.height * 0.004280156),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path26.close();

    Paint paint26 = Paint()..style = PaintingStyle.fill;
    paint26.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path26, paint26);

    Path path28 = Path();
    path28.moveTo(size.width * 0.08234309, size.height * 0.7482490);
    path28.arcToPoint(Offset(size.width * 0.08451491, size.height * 0.7522698),
        radius: Radius.elliptical(
            size.width * 0.002078744, size.height * 0.004345006),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.arcToPoint(Offset(size.width * 0.08259129, size.height * 0.7567445),
        radius: Radius.elliptical(
            size.width * 0.002047718, size.height * 0.004280156),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.arcToPoint(Offset(size.width * 0.08234309, size.height * 0.7482490),
        radius: Radius.elliptical(
            size.width * 0.002047718, size.height * 0.004280156),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.close();

    Paint paint28 = Paint()..style = PaintingStyle.fill;
    paint28.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path28, paint28);

    Path path30 = Path();
    path30.moveTo(size.width * 0.2891316, size.height * 0.4842412);
    path30.arcToPoint(Offset(size.width * 0.2912724, size.height * 0.4881971),
        radius: Radius.elliptical(
            size.width * 0.001985666, size.height * 0.004150454),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.arcToPoint(Offset(size.width * 0.2893798, size.height * 0.4927367),
        radius: Radius.elliptical(
            size.width * 0.002047718, size.height * 0.004280156),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.arcToPoint(Offset(size.width * 0.2872080, size.height * 0.4887160),
        radius: Radius.elliptical(
            size.width * 0.002078744, size.height * 0.004345006),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.arcToPoint(Offset(size.width * 0.2891316, size.height * 0.4842412),
        radius: Radius.elliptical(
            size.width * 0.002047718, size.height * 0.004280156),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.close();

    Paint paint30 = Paint()..style = PaintingStyle.fill;
    paint30.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path30, paint30);

    Path path31 = Path();
    path31.moveTo(size.width * 0.1861562, size.height * 0.7145914);
    path31.arcToPoint(Offset(size.width * 0.1810059, size.height * 0.7267185),
        radius: Radius.elliptical(
            size.width * 0.005491607, size.height * 0.01147860),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path31.arcToPoint(Offset(size.width * 0.1861562, size.height * 0.7145914),
        radius: Radius.elliptical(
            size.width * 0.005460581, size.height * 0.01141375),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.close();

    Path path32 = Path();
    path32.moveTo(size.width * 0.1868077, size.height * 0.7228275);
    path32.arcToPoint(Offset(size.width * 0.1884211, size.height * 0.7258106),
        radius: Radius.elliptical(
            size.width * 0.001520276, size.height * 0.003177691),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.arcToPoint(Offset(size.width * 0.1869939, size.height * 0.7291180),
        radius: Radius.elliptical(
            size.width * 0.001489249, size.height * 0.003112840),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.arcToPoint(Offset(size.width * 0.1853805, size.height * 0.7261349),
        radius: Radius.elliptical(
            size.width * 0.001520276, size.height * 0.003177691),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.arcToPoint(Offset(size.width * 0.1868077, size.height * 0.7228275),
        radius: Radius.elliptical(
            size.width * 0.001489249, size.height * 0.003112840),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.close();

    Paint paint32 = Paint()..style = PaintingStyle.fill;
    paint32.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path32, paint32);

    Path path34 = Path();
    path34.moveTo(size.width * 0.5688002, size.height * 0.7625811);
    path34.arcToPoint(Offset(size.width * 0.5656976, size.height * 0.7695850),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path34.arcToPoint(Offset(size.width * 0.5688002, size.height * 0.7625811),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.close();

    Paint paint34 = Paint()..style = PaintingStyle.fill;
    paint34.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path34, paint34);

    Path path_36 = Path();
    path_36.moveTo(size.width * 0.3265490, size.height * 0.7798962);
    path_36.arcToPoint(Offset(size.width * 0.3234464, size.height * 0.7869001),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_36.arcToPoint(Offset(size.width * 0.3265490, size.height * 0.7798962),
        radius: Radius.elliptical(
            size.width * 0.003102603, size.height * 0.006485084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_36.close();

    Paint paint36 = Paint()..style = PaintingStyle.fill;
    paint36.color = const Color(0xffffffab).withOpacity(1.0);
    canvas.drawPath(path_36, paint36);

    Path path_37 = Path();
    path_37.moveTo(size.width * 0.8815736, size.height * 0.7850843);
    path_37.cubicTo(
        size.width * 0.8779126,
        size.height * 0.7714008,
        size.width * 0.9104589,
        size.height * 0.7088846,
        size.width * 0.9188049,
        size.height * 0.7091440);
    path_37.cubicTo(
        size.width * 0.9271509,
        size.height * 0.7094034,
        size.width * 0.9197046,
        size.height * 0.7502594,
        size.width * 0.9147094,
        size.height * 0.7597925);
    path_37.cubicTo(
        size.width * 0.9097143,
        size.height * 0.7693256,
        size.width * 0.8834042,
        size.height * 0.7919585,
        size.width * 0.8815736,
        size.height * 0.7850843);
    path_37.close();

    Paint paint37 = Paint()..style = PaintingStyle.fill;
    paint37.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_37, paint37);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
