import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/layouts/dashboard_tablet_layout.dart';
import 'package:responsive_ui/views/widgets/adaptive_layout.dart';
import 'package:responsive_ui/views/widgets/layouts/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
