import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/desktop_layout.dart';
import 'package:responsive_ui/views/widgets/mobile_layout.dart';
import 'package:responsive_ui/views/widgets/tablet_layout.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final Widget mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return const MobileLayout();
      } else if (constrains.maxWidth < 900) {
        return const TabletLayout();
      } else {
        return const DesktopLayout();
      }
    });
  }
}
