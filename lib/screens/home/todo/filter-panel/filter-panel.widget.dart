import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/app-translation/translation.extensions.dart';
import '../../../../common/button/button.widget.dart';
import '../../../../common/items-left/items-left.extensions.dart';
import 'filter-panel-buttons/filter-panel-buttons.dart';
import 'filter-panel.controller.dart';
import 'filter-panel.translation.dart';

class FilterPanelWidget extends GetView<FilterPanelController> {
  const FilterPanelWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
        if (controller.tasks.isEmpty) {
          return const SizedBox();
        }

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    controller.activeCount.itemsLeft,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  ButtonWidget(
                    onTap: controller.clearCompleted,
                    title: FilterPanelTranslationNames.clearItems.tr,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FilterPanelButtons(),
                ],
              ),
            ],
          ),
        );
      });
}
