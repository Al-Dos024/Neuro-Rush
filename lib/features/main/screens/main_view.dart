import 'package:adhd/features/main/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:adhd/constants.dart';
import 'package:flutter/widgets.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MainDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kWhitecolor),
        backgroundColor: kBluecolor_1,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Main View Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
