import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/extra_controller.dart';
import 'controller.dart';

class RadioListView extends StatelessWidget {
  final RadioListController controller = Get.put(RadioListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio List Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => RadioListTile<String>(
              title: Text('Option 1'),
              value: 'Option 1',
              groupValue: controller.selectedValue.value,
              onChanged: (value) {
                controller.updateSelectedValue(value!);
              },
            )),
            Obx(() => RadioListTile<String>(
              title: Text('Option 2'),
              value: 'Option 2',
              groupValue: controller.selectedValue.value,
              onChanged: (value) {
                controller.updateSelectedValue(value!);
              },
            )),
            Obx(() => RadioListTile<String>(
              title: Text('Option 3'),
              value: 'Option 3',
              groupValue: controller.selectedValue.value,
              onChanged: (value) {
                controller.updateSelectedValue(value!);
              },
            )),
          ],
        ),
      ),
    );
  }
}