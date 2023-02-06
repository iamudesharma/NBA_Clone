import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime start = DateTime(now.year, now.month, now.day);
    DateTime end = DateTime(now.year, now.month, now.day + 7);
    final Size size = MediaQuery.of(context).size;

    print(size.width);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(size.width, kToolbarHeight),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              const Spacer(),
              Image.asset(
                "assets/nba_logo.png",
                fit: BoxFit.contain,
              ),
              const Icon(Icons.arrow_drop_down),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.calculate),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            CalendarTopWidget(size: size, start: start),
            const Expanded(
              child: MatchList(),
            )
          ],
        ),
      ),
    );
  }
}
