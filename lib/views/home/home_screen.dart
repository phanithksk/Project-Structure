import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure/view_model/dark_mode_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Get.put(DarkModeController());

  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 40),
            //   child: Image.asset("assets/images/home/girl.jpeg"),
            // ),
            // Card(
            //   elevation: 0.7,
            //   color: Theme.of(context).cardColor,
            //   clipBehavior: Clip.antiAlias,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           'dark_mode',
            //           style: titleTextSyle(),
            //         ),
            //         const SizedBox(width: 15),
            //         GetBuilder<DarkModeController>(
            //           builder: (_) {
            //             return Switch.adaptive(
            //               onChanged: (darkValue) {
            //                 debugPrint('----work----');
            //                 controller.darkToggle(darkValue);
            //                 ThemeService().changeTheme();
            //               },
            //               value: controller.darkStatus,
            //             );
            //           },
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
