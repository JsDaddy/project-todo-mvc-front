import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/button/button.widget.dart';
import '../todo.controller.dart';

class FilterPanelWidget extends StatelessWidget {
  FilterPanelWidget({super.key});

  final TodoController controller = Get.find<TodoController>();

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> filters = <Map<String, String>>[
      <String, String>{'label': 'All', 'key': 'all'},
      <String, String>{'label': 'Active', 'key': 'active'},
      <String, String>{'label': 'Completed', 'key': 'completed'},
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Obx(() => Text(
            '${controller.activeCount} items left',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          )),
          Obx(() => Row(
            children: filters
                .map((Map<String, String> filter) => ButtonWidget(
              label: filter['label']!,
              isActive: controller.currentFilter.value == filter['key'],
              onTap: () => controller.setFilter(filter['key']!),
            ))
                .toList(),
          )),
          ButtonWidget(
            onTap: controller.clearCompleted,
            label: 'Clear completed',
            isActive: false,
          ),
        ],
      ),
    );
  }
}
