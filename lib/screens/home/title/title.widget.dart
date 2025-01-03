import 'package:flutter/material.dart';

import 'title.translation.dart';
import '../../../common/app-translation/translation.extensions.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20),
        child: Text(
          TitleTranslationNames.title.tr,
          style: const TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.w300,
            color: Colors.red,
          ),
        ),
      );
}
