import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/app-translation/translation.extensions.dart';
import '../../../../common/button/button.widget.dart';
import 'filter-panel-buttons/filter-panel-buttons.dart';
import 'filter-panel.controller.dart';
import 'filter-panel.translation.dart';

class FilterPanelWidget extends GetView<FilterPanelController> {
  const FilterPanelWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
        final bool isMobile = MediaQuery.of(context).size.width < 600;

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
                    '${controller.activeCount} items left',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  if (!isMobile) const FilterPanelButtons(),
                  ButtonWidget(
                    onTap: controller.clearCompleted,
                    title: FilterPanelTranslationNames.clearItems.tr,
                  ),
                ],
              ),
              if (isMobile)
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
