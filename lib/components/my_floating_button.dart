import 'package:flutter/material.dart';

Widget myFloatingButton(
    Color background, IconData? icono, void Function() count) {
  return FloatingActionButton(
    backgroundColor: background,
    onPressed: () => {count()},
    child: Icon(
      icono,
      color: Colors.white,
    ),
  );
}
