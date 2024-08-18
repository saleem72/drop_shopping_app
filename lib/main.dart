//

import 'package:drop_shopping_app/dependency_injection.dart' as di;
import 'package:drop_shopping_app/features/bottom_bar_screen/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeProvider.lightTheme('Product Sans'),
      darkTheme: ThemeProvider.darkTheme('Product Sans'),
      themeMode: ThemeMode.light,
      home: const BottomBarScreen(),
    );
  }
}
