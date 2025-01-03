import 'package:flutter/material.dart';
import 'language-switcher/language-switcher.dart';
import 'todo/todo.widget.dart';
import '../home/title/title.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: const <Widget>[
            Center(child: TitleWidget()),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: LanguageSwitcher(),
              ),
            ),
            TodoWidget(),
          ],
        ),
      );
}
