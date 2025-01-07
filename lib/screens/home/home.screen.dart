import 'package:flutter/material.dart';
import '../../common/theme-switcher/theme-switcher.widget.dart';
import 'todo/todo.widget.dart';
import '../home/title/title.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: ListView(
          children: const <Widget>[
            Center(child: TitleWidget()),
            ThemeSwitcherWidget(),
            TodoWidget(),
          ],
        ),
      );
}
