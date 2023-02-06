import 'package:flutter/material.dart';
import 'package:nba_clone/widgets/widgets.dart';

import '../models/models.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    Key? key,
    required this.nbaModel,
  }) : super(key: key);

  final NBAModel nbaModel;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Card(
      elevation: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(nbaModel.teamModel1.logo),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "120",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Spacer(),
                nbaModel.status == MatchEnum.COMPLETED
                    ? const Text(
                        "Final",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    : nbaModel.status == MatchEnum.LIVE
                        ? const Text(
                            "In Play",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 16),
                          )
                        : const Text(
                            "Upcoming",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 16),
                          ),
                const Spacer(),
                Text(
                  "120",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(nbaModel.teamModel2.logo),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              children: [
                Column(
                  children: const [
                    Text("Clippers"),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.favorite_border),
                const Spacer(),
                Column(
                  children: const [
                    Text("Lakars"),
                  ],
                ),
              ],
            ),
          ),
          nbaModel.status == MatchEnum.UPCOMING
              ? const SizedBox.shrink()
              : const Divider(),
          nbaModel.status == MatchEnum.UPCOMING
              ? const SizedBox()
              : Column(
                  children: [
                    ScoreList(
                      isSecondTeam: false,
                      teamShortForm: "LAK",
                      score: nbaModel.scoreTeam1,
                    ),
                    ScoreList(
                      isSecondTeam: true,
                      teamShortForm: "LAK",
                      score: nbaModel.scoreTeam2,
                    ),
                  ],
                ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
