import 'package:flutter/material.dart';

import '../data/data.dart';
import 'match_card.dart';

class MatchList extends StatelessWidget {
  const MatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: nbaData.length,
      itemBuilder: (context, index) {
        return MatchCard(
          nbaModel: nbaData[index],
        );
      },
    );
  }
}
