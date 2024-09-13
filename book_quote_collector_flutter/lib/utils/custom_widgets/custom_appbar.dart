import 'package:flutter/material.dart';

AppBar customAppBar({
  required String title,
  VoidCallback? onTap,
  IconData? icon,
}) {
  return AppBar(
    title:  Text(title),
    centerTitle: true,
    actions: [if (icon != null) IconButton(onPressed: onTap, icon: Icon(icon)) else const SizedBox()],
  );
}
