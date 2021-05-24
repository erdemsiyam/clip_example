import 'package:flutter/material.dart';

class MyCustomClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Çizim koordinat olarak burada yapılır

    final path = Path();
    path.lineTo(0, size.height);
    // x1,y1 : eğri ortası, x2,y2 : çizim bitişi
    path.quadraticBezierTo(
      size.width / 4,
      size.height * 0.7,
      size.width / 2,
      size.height * 0.8,
    );
    path.quadraticBezierTo(
      3 / 4 * size.width,
      size.height * 0.9,
      size.width,
      size.height * 0.7,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  // Geliştirme aşamasındayken hot reload özelliğinden faydalanmak için “true” olmalı.
  // Böylece değişiklikleri kaydettiğinizde direkt değişikliği görebilirsiniz.
  // “false” yaptığınızda sadece clipper tetiklendiğinde getClip yapacaktır.
  @override
  bool shouldReclip(MyCustomClipper3 oldClipper) => false;
}
