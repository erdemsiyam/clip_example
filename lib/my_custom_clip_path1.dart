import 'package:flutter/material.dart';

class MyCustomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Çizim koordinat olarak burada yapılır

    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  // Geliştirme aşamasındayken hot reload özelliğinden faydalanmak için “true” olmalı.
  // Böylece değişiklikleri kaydettiğinizde direkt değişikliği görebilirsiniz.
  // “false” yaptığınızda sadece clipper tetiklendiğinde getClip yapacaktır.
  @override
  bool shouldReclip(MyCustomClipper1 oldClipper) => false;
}
