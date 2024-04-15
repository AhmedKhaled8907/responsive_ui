import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/layouts/dashboard_mobile_layout.dart';
import 'package:responsive_ui/views/widgets/layouts/dashboard_tablet_layout.dart';
import 'package:responsive_ui/views/widgets/adaptive_layout.dart';
import 'package:responsive_ui/views/widgets/layouts/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xfff7f9fa),
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
