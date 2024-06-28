import 'package:flutter/material.dart';
import 'package:noticias/Components/AppBarNoticias.dart';

class NoticiaHero extends StatelessWidget {
  const NoticiaHero({
    super.key,
    required this.photo,
    this.onTap,
    required this.width,
  });

  final String photo;
  final VoidCallback? onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: photo,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Image.network(
            photo,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
