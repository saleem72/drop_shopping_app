//

import 'package:drop_shopping_app/core/styles/themes.dart';
import 'package:drop_shopping_app/dependency_injection.dart' as di;
import 'package:drop_shopping_app/features/bottom_bar_screen/bottom_bar_screen.dart';
import 'package:flutter/material.dart';

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
      theme: DropShoppingTheme.light,
      darkTheme: DropShoppingTheme.dark,
      themeMode: ThemeMode.dark,
      home: const BottomBarScreen(),
    );
  }
}
