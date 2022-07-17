import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BarElemanView extends StatelessWidget {
  const BarElemanView({Key? key, this.child, this.barText}) : super(key: key);
  final Widget? child;
  final int? barText;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BarEleman(),
      child: barText != null ? Center(child: FittedBox(fit: BoxFit.scaleDown, child: Text("$barText", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),))): const Center(),
    );
  }
}

class BarEleman extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width, size.height * 0.2571579);
    path0.lineTo(size.width, size.height * 0.7425795);
    path0.arcToPoint(Offset(size.width * 0.9001435, size.height),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.1025220, size.height);
    path0.arcToPoint(Offset(size.width * 0.002665573, size.height * 0.7425795),
        radius:
            Radius.elliptical(size.width * 0.1002666, size.height * 0.2568952),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.002665573, size.height * 0.2571579);
    path0.arcToPoint(Offset(size.width * 0.1025220, 0),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.9001435, 0);
    path0.arcToPoint(Offset(size.width * 0.9263892, size.height * 0.008930917),
        radius:
            Radius.elliptical(size.width * 0.1006766, size.height * 0.2579459),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.9707812, size.height * 0.07538744),
        radius:
            Radius.elliptical(size.width * 0.09924134, size.height * 0.2542685),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.arcToPoint(Offset(size.width, size.height * 0.2571579),
        radius:
            Radius.elliptical(size.width * 0.1003691, size.height * 0.2571579),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();

    Paint paint0 = Paint()..style = PaintingStyle.fill;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.2665573, size.height * 0.4998687),
        Offset(size.width, size.height * 0.4998687), [
      const Color(0xffffcc00).withOpacity(1),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width * 0.9425877, size.height * 0.1544523);
    path1.arcToPoint(Offset(size.width * 0.8757433, size.height * 0.08326766),
        radius:
            Radius.elliptical(size.width * 0.09421776, size.height * 0.2413974),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.lineTo(size.width * 0.1214886, size.height * 0.08326766);
    path1.arcToPoint(Offset(size.width * 0.02706582, size.height * 0.3265038),
        radius:
            Radius.elliptical(size.width * 0.09473037, size.height * 0.2427108),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.lineTo(size.width * 0.02706582, size.height * 0.4100341);
    path1.arcToPoint(Offset(size.width * 0.1214886, size.height * 0.1665353),
        radius:
            Radius.elliptical(size.width * 0.09473037, size.height * 0.2427108),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.lineTo(size.width * 0.8757433, size.height * 0.1665353);
    path1.arcToPoint(Offset(size.width * 0.9425877, size.height * 0.2379827),
        radius:
            Radius.elliptical(size.width * 0.09391019, size.height * 0.2406094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.arcToPoint(Offset(size.width * 0.9701661, size.height * 0.4100341),
        radius:
            Radius.elliptical(size.width * 0.09503793, size.height * 0.2434988),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.lineTo(size.width * 0.9701661, size.height * 0.3265038);
    path1.arcToPoint(Offset(size.width * 0.9425877, size.height * 0.1544523),
        radius:
            Radius.elliptical(size.width * 0.09534550, size.height * 0.2442868),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.close();

    Paint paint1 = Paint()..style = PaintingStyle.fill;
    paint1.color = const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3);
    canvas.drawPath(path1, paint1);

    Path path2 = Path();
    path2.moveTo(size.width * 0.8974780, size.height * 0.5416338);
    path2.lineTo(size.width * 0.09985647, size.height * 0.5416338);
    path2.arcToPoint(Offset(0, size.height * 0.2844760),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path2.lineTo(0, size.height * 0.7425795);
    path2.arcToPoint(Offset(size.width * 0.09985647, size.height),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(size.width * 0.8974780, size.height);
    path2.arcToPoint(Offset(size.width * 0.9973344, size.height * 0.7425795),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(size.width * 0.9973344, size.height * 0.2844760);
    path2.arcToPoint(Offset(size.width * 0.8974780, size.height * 0.5416338),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path2.close();

    Paint paint2 = Paint()..style = PaintingStyle.fill;
    paint2.shader = ui.Gradient.linear(
        Offset(size.width * 0.2665573, size.height * 0.4998687),
        Offset(size.width, size.height * 0.4998687), [
      const Color.fromARGB(255, 112, 112, 92).withOpacity(0.3),
      const Color(0xffff9700).withOpacity(0.5)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path2, paint2);

    Path path3 = Path();
    path3.moveTo(size.width * 0.8974780, size.height * 0.9025479);
    path3.lineTo(size.width * 0.09985647, size.height * 0.9025479);
    path3.arcToPoint(Offset(0, size.height * 0.6453901),
        radius:
            Radius.elliptical(size.width * 0.1000615, size.height * 0.2563698),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.lineTo(0, size.height * 0.7425795);
    path3.arcToPoint(Offset(size.width * 0.09985647, size.height),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.lineTo(size.width * 0.8974780, size.height);
    path3.arcToPoint(Offset(size.width * 0.9973344, size.height * 0.7425795),
        radius:
            Radius.elliptical(size.width * 0.1001640, size.height * 0.2566325),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.lineTo(size.width * 0.9973344, size.height * 0.6453901);
    path3.arcToPoint(Offset(size.width * 0.8974780, size.height * 0.9025479),
        radius:
            Radius.elliptical(size.width * 0.1000615, size.height * 0.2563698),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.close();

    Paint paint3 = Paint()..style = PaintingStyle.fill;
    paint3.shader = ui.Gradient.linear(
        Offset(size.width * 0.2665573, size.height * 0.4998687),
        Offset(size.width, size.height * 0.4998687), [
      const Color.fromARGB(255, 99, 89, 89).withOpacity(0.3),
      const Color(0xffff9700).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path3, paint3);

    Path path4 = Path();
    path4.moveTo(size.width * 0.5460324, 0);
    path4.lineTo(size.width * 0.2055567, size.height * 0.9997373);
    path4.lineTo(size.width * 0.1126717, size.height * 0.9997373);
    path4.lineTo(size.width * 0.4366414, 0);
    path4.lineTo(size.width * 0.5460324, 0);
    path4.close();

    Paint paint4 = Paint()..style = PaintingStyle.fill;
    paint4.color = const Color.fromARGB(255, 240, 214, 130).withOpacity(0.5);
    canvas.drawPath(path4, paint4);

    Path path5 = Path();
    path5.moveTo(size.width * 0.9263892, size.height * 0.008930917);
    path5.lineTo(size.width * 0.6268198, size.height);
    path5.lineTo(size.width * 0.3397580, size.height);
    path5.lineTo(size.width * 0.6935616, 0);
    path5.lineTo(size.width * 0.9001435, 0);
    path5.arcToPoint(Offset(size.width * 0.9263892, size.height * 0.008930917),
        radius:
            Radius.elliptical(size.width * 0.1006766, size.height * 0.2579459),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.close();

    Paint paint5 = Paint()..style = PaintingStyle.fill;
    paint5.color = const Color.fromARGB(255, 240, 214, 130).withOpacity(0.5);
    canvas.drawPath(path5, paint5);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
