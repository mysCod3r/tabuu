import 'package:flutter/material.dart';

import 'bar_eleman_view.dart';

class BarKatmanView extends StatelessWidget {
  const BarKatmanView({Key? key, this.child, required this.deger, required this.size, required this.barText}) : super(key: key);
  final Widget? child;
  final int deger;
  final Size size;
  final int barText;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BarKatman(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Row(
          children: [
            deger >= 1
                ? _BarEkle(size: size, barText: deger == 1 ? barText : null)
                : const Center(),
            deger >= 2
                ? _BarEkle(size: size, barText: deger == 2 ? barText : null)
                : const Center(),
            deger >= 3
                ? _BarEkle(size: size, barText: deger == 3 ? barText : null)
                : const Center(),
            deger >= 4
                ? _BarEkle(size: size, barText: deger == 4 ? barText : null)
                : const Center(),
            deger == 5
                ? _BarEkle(size: size, barText: deger == 5 ? barText : null)
                : const Center(),
          ],
        ),
      ),
    );
  }
}

class _BarEkle extends StatelessWidget {
  const _BarEkle({
    Key? key, required this.size, this.barText,
  }) : super(key: key);

  final Size size;
  final int? barText;

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.symmetric(horizontal: 1),
    padding: const EdgeInsets.symmetric(vertical: 2),
    width: size.width,
    height: size.height,
    child: BarElemanView(barText: barText));
  }
}

class BarKatman extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.6797197, size.height * 0.9916640);
    path0.lineTo(size.width * 0.6747061, size.height * 0.9831677);
    path0.lineTo(size.width * 0.6767002, size.height * 0.9491824);
    path0.lineTo(size.width * 0.6753138, size.height * 0.9272203);
    path0.lineTo(size.width * 0.6777067, size.height * 0.8813722);
    path0.lineTo(size.width * 0.6837458, size.height * 0.9406861);
    path0.lineTo(size.width * 0.6797197, size.height * 0.9916640);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width, size.height * 0.5169926);
    path1.lineTo(size.width * 0.9939799, size.height * 0.9068612);
    path1.lineTo(size.width * 0.9257079, size.height);
    path1.lineTo(size.width * 0.8805287, size.height * 0.9987175);
    path1.lineTo(size.width * 0.6797197, size.height * 0.9916640);
    path1.lineTo(size.width * 0.6817327, size.height * 0.9406861);
    path1.lineTo(size.width * 0.6777067, size.height * 0.8813722);
    path1.lineTo(size.width * 0.6736996, size.height * 0.9576787);
    path1.lineTo(size.width * 0.6696356, size.height * 0.9919846);
    path1.lineTo(size.width * 0.1194713, size.height * 0.9746714);
    path1.lineTo(size.width * 0.03714606, size.height * 0.9244950);
    path1.lineTo(size.width * 0.008033120, size.height * 0.9068612);
    path1.lineTo(0, size.height * 0.5000000);
    path1.lineTo(size.width * 0.008033120, size.height * 0.09329913);
    path1.lineTo(size.width * 0.03714606, 0);
    path1.lineTo(size.width * 0.2128492, size.height * 0.003366464);
    path1.lineTo(size.width * 0.2188693, size.height * 0.06781020);
    path1.lineTo(size.width * 0.2339290, size.height * 0.1016351);
    path1.lineTo(size.width * 0.2319350, size.height * 0.02548894);
    path1.lineTo(size.width * 0.2327896, size.height * 0.003526771);
    path1.lineTo(size.width * 0.9698805, size.height * 0.01699263);
    path1.lineTo(size.width * 0.9939799, size.height * 0.1779416);
    path1.lineTo(size.width, size.height * 0.5169926);
    path1.close();

    Paint paint1 = Paint()..style = PaintingStyle.fill;
    paint1.color = const Color(0xff8191aa).withOpacity(1.0);
    canvas.drawPath(path1, paint1);

    Path path2 = Path();
    path2.moveTo(size.width, size.height * 0.5169926);
    path2.lineTo(size.width * 0.9939799, size.height * 0.9068612);
    path2.lineTo(size.width * 0.9271132, size.height * 0.9980763);
    path2.lineTo(size.width * 0.9257079, size.height);
    path2.lineTo(size.width * 0.8805287, size.height * 0.9987175);
    path2.lineTo(size.width * 0.9257079, size.height * 0.9661751);
    path2.lineTo(size.width * 0.9718936, size.height * 0.8135620);
    path2.lineTo(size.width * 0.9849403, size.height * 0.5000000);
    path2.lineTo(size.width * 0.9849403, size.height * 0.2204232);
    path2.lineTo(size.width * 0.9698805, size.height * 0.01699263);
    path2.lineTo(size.width * 0.9939799, size.height * 0.1779416);
    path2.lineTo(size.width * 0.9941318, size.height * 0.1865983);
    path2.lineTo(size.width * 0.9998481, size.height * 0.5084963);
    path2.lineTo(size.width, size.height * 0.5169926);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path2, paint2);

    Path path3 = Path();
    path3.moveTo(size.width * 0.01304670, size.height * 0.7542482);
    path3.lineTo(size.width * 0.03714606, size.height * 0.9244950);
    path3.lineTo(size.width * 0.008033120, size.height * 0.9068612);
    path3.lineTo(size.width * 0.005811193, size.height * 0.7941648);
    path3.lineTo(0, size.height * 0.5000000);
    path3.lineTo(size.width * 0.002639725, size.height * 0.3661430);
    path3.lineTo(size.width * 0.008033120, size.height * 0.09329913);
    path3.lineTo(size.width * 0.008185047, size.height * 0.09265790);
    path3.lineTo(size.width * 0.03714606, 0);
    path3.lineTo(size.width * 0.02107982, size.height * 0.1694453);
    path3.lineTo(size.width * 0.009039634, size.height * 0.3643796);
    path3.lineTo(size.width * 0.01405321, size.height * 0.5000000);
    path3.lineTo(size.width * 0.01304670, size.height * 0.7542482);
    path3.close();

    Paint paint3 = Paint()..style = PaintingStyle.fill;
    paint3.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path3, paint3);

    Path path4 = Path();
    path4.moveTo(size.width * 0.9658735, size.height * 0.3603719);
    path4.lineTo(size.width * 0.9658735, size.height * 0.6572619);
    path4.arcToPoint(Offset(size.width * 0.9472625, size.height * 0.8142033),
        radius:
            Radius.elliptical(size.width * 0.01859202, size.height * 0.1569413),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.lineTo(size.width * 0.04571092, size.height * 0.8142033);
    path4.arcToPoint(Offset(size.width * 0.03701312, size.height * 0.7960885),
        radius:
            Radius.elliptical(size.width * 0.01838312, size.height * 0.1551779),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.arcToPoint(Offset(size.width * 0.02709991, size.height * 0.6572619),
        radius:
            Radius.elliptical(size.width * 0.01859202, size.height * 0.1569413),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.lineTo(size.width * 0.02709991, size.height * 0.3603719);
    path4.arcToPoint(Offset(size.width * 0.04571092, size.height * 0.2034306),
        radius:
            Radius.elliptical(size.width * 0.01859202, size.height * 0.1569413),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.lineTo(size.width * 0.9472625, size.height * 0.2034306);
    path4.arcToPoint(Offset(size.width * 0.9658735, size.height * 0.3603719),
        radius:
            Radius.elliptical(size.width * 0.01864899, size.height * 0.1574223),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.close();

    Paint paint4 = Paint()..style = PaintingStyle.fill;
    paint4.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path4, paint4);

    Path path5 = Path();
    path5.moveTo(size.width * 0.9472625, size.height * 0.8348830);
    path5.lineTo(size.width * 0.04571092, size.height * 0.8348830);
    path5.arcToPoint(Offset(size.width * 0.02468808, size.height * 0.6572619),
        radius:
            Radius.elliptical(size.width * 0.02113679, size.height * 0.1784226),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.lineTo(size.width * 0.02468808, size.height * 0.3603719);
    path5.arcToPoint(Offset(size.width * 0.04571092, size.height * 0.1822700),
        radius:
            Radius.elliptical(size.width * 0.02113679, size.height * 0.1784226),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.lineTo(size.width * 0.9472625, size.height * 0.1822700);
    path5.arcToPoint(Offset(size.width * 0.9683803, size.height * 0.3603719),
        radius:
            Radius.elliptical(size.width * 0.02109881, size.height * 0.1781020),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.lineTo(size.width * 0.9683803, size.height * 0.6572619);
    path5.arcToPoint(Offset(size.width * 0.9472625, size.height * 0.8348830),
        radius:
            Radius.elliptical(size.width * 0.02113679, size.height * 0.1784226),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.close();
    path5.moveTo(size.width * 0.04571092, size.height * 0.2244309);
    path5.arcToPoint(Offset(size.width * 0.02962569, size.height * 0.3602116),
        radius:
            Radius.elliptical(size.width * 0.01610422, size.height * 0.1359410),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.lineTo(size.width * 0.02962569, size.height * 0.6572619);
    path5.arcToPoint(Offset(size.width * 0.04571092, size.height * 0.7930426),
        radius:
            Radius.elliptical(size.width * 0.01610422, size.height * 0.1359410),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.lineTo(size.width * 0.9472625, size.height * 0.7930426);
    path5.arcToPoint(Offset(size.width * 0.9633477, size.height * 0.6572619),
        radius:
            Radius.elliptical(size.width * 0.01610422, size.height * 0.1359410),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.lineTo(size.width * 0.9633477, size.height * 0.3603719);
    path5.arcToPoint(Offset(size.width * 0.9472625, size.height * 0.2244309),
        radius:
            Radius.elliptical(size.width * 0.01608523, size.height * 0.1357807),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.close();

    Paint paint5 = Paint()..style = PaintingStyle.fill;
    paint5.color = const Color(0xff3d435b).withOpacity(1.0);
    canvas.drawPath(path5, paint5);

    Path path6 = Path();
    path6.moveTo(size.width * 0.2128492, size.height * 0.008496313);
    path6.lineTo(size.width * 0.2239019, size.height * 0.01699263);
    path6.lineTo(size.width * 0.2289154, size.height * 0.05081757);
    path6.lineTo(size.width * 0.2325997, size.height * 0.05081757);
    path6.lineTo(size.width * 0.2339290, size.height * 0.1016351);
    path6.lineTo(size.width * 0.2188693, size.height * 0.06781020);
    path6.lineTo(size.width * 0.2128492, size.height * 0.008496313);
    path6.close();

    Paint paint6 = Paint()..style = PaintingStyle.fill;
    paint6.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path6, paint6);

    Path path7 = Path();
    path7.moveTo(0, size.height * 0.5000000);
    path7.lineTo(size.width * 0.01405321, size.height * 0.5000000);
    path7.lineTo(size.width * 0.01304670, size.height * 0.7542482);
    path7.lineTo(size.width * 0.005811193, size.height * 0.7941648);
    path7.lineTo(0, size.height * 0.5000000);
    path7.close();

    Paint paint7 = Paint()..style = PaintingStyle.fill;
    paint7.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path7, paint7);

    Path path8 = Path();
    path8.moveTo(size.width * 0.003019542, size.height * 0.3643796);
    path8.lineTo(size.width * 0.002639725, size.height * 0.3661430);
    path8.lineTo(size.width * 0.008033120, size.height * 0.09329913);
    path8.lineTo(size.width * 0.008185047, size.height * 0.09265790);
    path8.lineTo(size.width * 0.02107982, size.height * 0.1694453);
    path8.lineTo(size.width * 0.009039634, size.height * 0.3643796);
    path8.lineTo(size.width * 0.003019542, size.height * 0.3643796);
    path8.close();

    Paint paint8 = Paint()..style = PaintingStyle.fill;
    paint8.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path8, paint8);

    Path path9 = Path();
    path9.moveTo(size.width * 0.7814536, size.height * 0.01699263);
    path9.lineTo(size.width * 0.7951839, size.height * 0.06781020);
    path9.lineTo(size.width * 0.8142507, size.height * 0.06781020);
    path9.lineTo(size.width * 0.8259681, size.height * 0.01426739);
    path9.lineTo(size.width * 0.7814536, size.height * 0.01699263);
    path9.close();

    Paint paint9 = Paint()..style = PaintingStyle.fill;
    paint9.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path9, paint9);

    Path path10 = Path();
    path10.moveTo(size.width * 0.8142507, size.height * 0.06781020);
    path10.lineTo(size.width * 0.8107374, size.height * 0.01699263);
    path10.lineTo(size.width * 0.8037108, size.height * 0.01699263);
    path10.lineTo(size.width * 0.7951839, size.height * 0.06781020);
    path10.lineTo(size.width * 0.8142507, size.height * 0.06781020);
    path10.close();

    Paint paint10 = Paint()..style = PaintingStyle.fill;
    paint10.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path10, paint10);

    Path path11 = Path();
    path11.moveTo(size.width * 0.9718936, size.height * 0.8135620);
    path11.lineTo(size.width * 0.9939799, size.height * 0.9068612);
    path11.lineTo(size.width * 0.9271132, size.height * 0.9980763);
    path11.lineTo(size.width * 0.9257079, size.height * 0.9661751);
    path11.lineTo(size.width * 0.9718936, size.height * 0.8135620);
    path11.close();

    Paint paint11 = Paint()..style = PaintingStyle.fill;
    paint11.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path11, paint11);

    Path path12 = Path();
    path12.moveTo(size.width * 0.9998481, size.height * 0.5084963);
    path12.lineTo(size.width * 0.9849403, size.height * 0.5000000);
    path12.lineTo(size.width * 0.9849403, size.height * 0.2204232);
    path12.lineTo(size.width * 0.9939799, size.height * 0.1864380);
    path12.lineTo(size.width * 0.9941318, size.height * 0.1865983);
    path12.lineTo(size.width * 0.9998481, size.height * 0.5084963);
    path12.close();

    Paint paint12 = Paint()..style = PaintingStyle.fill;
    paint12.color = const Color(0xff5c647b).withOpacity(1.0);
    canvas.drawPath(path12, paint12);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
