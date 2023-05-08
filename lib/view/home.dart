import 'package:flutter/material.dart';

import 'desktop/desktopbody.dart';
import 'mobile/mobilebody.dart';
import 'responsive_layout.dart';
import 'tablet/tabletbody.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileBody: MobileBodyScreen(),
        tabletBody: TabletBodyScreen(),
        desktopBody: DesktopBodyScreen());
  }
}
