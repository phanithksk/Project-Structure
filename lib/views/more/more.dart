import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure/core/services/themes_services.dart';
import 'package:project_structure/core/utils/app_fonts.dart';
import 'package:project_structure/view_model/theme_view_model.dart.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({
    super.key,
  });

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  final controller = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'More',
          style: appbarTextSyle(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            DarkModeView(),
          ],
        ),
      ),
    );
  }
}

class DarkModeView extends GetView<DarkModeController> {
  @override
  final controller = Get.put(DarkModeController());

  DarkModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Card(
        elevation: 0.7,
        color: Theme.of(context).cardColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.dark_mode),
                  const SizedBox(width: 15),
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontFamily: Get.locale == const Locale('km', 'KM')
                          ? 'KH-REGULAR'
                          : 'EN-REGULAR',
                      fontSize: context.isPhone ? 14 : 18,
                    ),
                  ),
                ],
              ),
              GetBuilder<DarkModeController>(
                builder: (_) {
                  return Switch.adaptive(
                    onChanged: (darkValue) {
                      controller.darkToggle(darkValue);
                      ThemeService().changeTheme();
                    },
                    value: controller.darkStatus,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
