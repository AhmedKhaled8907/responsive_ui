import 'package:flutter/material.dart';

class DrawerItemModel {
  final String title;
  final IconData icon;

  DrawerItemModel({
    required this.title,
    required this.icon,
  });
}

final List<DrawerItemModel> drawerList = [
  DrawerItemModel(
    title: 'D A S H B O A R D',
    icon: Icons.home,
  ),
  DrawerItemModel(
    title: 'S E T T I N G S',
    icon: Icons.settings,
  ),
  DrawerItemModel(
    title: 'A B O U T',
    icon: Icons.info,
  ),
  DrawerItemModel(
    title: 'L O G O U T',
    icon: Icons.logout,
  ),
];
