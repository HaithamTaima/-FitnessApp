import 'package:flutter/material.dart';

class ModelAppBar {
  final String? title;
  final Widget widget;
  final Widget? iconCenter;
  final Widget? icon;
  final int ? num;

  const ModelAppBar({
    this.title,
    required this.widget,
    this.num,
     this.iconCenter,
     this.icon,
  });
}
