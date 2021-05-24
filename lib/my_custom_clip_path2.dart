import 'package:flutter/material.dart';

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Çizim koordinat olarak burada yapılır

    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height / 1.33);
    path.lineTo(size.width, 0);
    return path;
  }

  // Geliştirme aşamasındayken hot reload özelliğinden faydalanmak için “true” olmalı.
  // Böylece değişiklikleri kaydettiğinizde direkt değişikliği görebilirsiniz.
  // “false” yaptığınızda sadece clipper tetiklendiğinde getClip yapacaktır.
  @override
  bool shouldReclip(MyCustomClipper2 oldClipper) => false;
}
