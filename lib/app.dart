// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      home: TabPage(),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  List<IconData> _icons = [
    Icons.score,
    Icons.live_tv,
    Icons.star_border,
    Icons.note_add_sharp,
    Icons.search,
  ];

  List<String> _titles = [
    "Score",
    "Live",
    "Favorite",
    "Notes",
    "Search",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomePage(),
        bottomNavigationBar: Container(
          height: kBottomNavigationBarHeight,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue.shade900,
          child: Row(
              children: List.generate(4, (index) {
            return CustomBottomNavigationItem(
              iconData: _icons[index],
              title: _titles[index],
              isSelected: index == _selectedIndex,
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
            );
          })),
        ));
  }
}

class CustomBottomNavigationItem extends StatelessWidget {
  const CustomBottomNavigationItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.bottomCenter,
          height: kBottomNavigationBarHeight,
          color: isSelected ? Colors.white : Colors.blue.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                color: isSelected ? Colors.black : Colors.white,
              ),
              Text(title,
                  style: TextStyle(
                    color: isSelected ? Colors.black : Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
