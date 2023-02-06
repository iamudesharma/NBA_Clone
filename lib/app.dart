import 'package:flutter/material.dart';

import 'pages/pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // useMaterial3: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      home: const HomePage(),
    );
  }
}
