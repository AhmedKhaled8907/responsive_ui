import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/size_config.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/custom_drawer.dart';
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
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const Drawer(
              elevation: 0,
              child: CustomDrawer(),
            )
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: const Color(0xfff7f9fa),
              elevation: 0,
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
