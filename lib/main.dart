import 'package:flutter/material.dart';

import 'screens/screen_1.dart';
import 'screens/screen_2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (context) => const OneScreen(),
        'pagina2': (context) => const TwoScreen(),
      },
    );
  }
}