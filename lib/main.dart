import 'dart:ui';

import 'package:portfolio/core/core_export.dart';
import 'package:portfolio/features/navigation/controller/navigation_controller.dart';
import 'package:portfolio/features/navigation/screen/navigation_screen.dart';

void main() {
  runApp(const Portfolio());
}
class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(NavigationController());

    return GetMaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
      ),
      debugShowCheckedModeBanner: false,
      home: const NavigationScreen(),
    );
  }
}
