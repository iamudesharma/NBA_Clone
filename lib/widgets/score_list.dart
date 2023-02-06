// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ScoreList extends StatelessWidget {
  const ScoreList({
    Key? key,
    required this.score,
    required this.isSecondTeam,
    required this.teamShortForm,
  }) : super(key: key);

  final List<int> score;
  final bool isSecondTeam;

  final String teamShortForm;

  int getTotal(List<int> total) {
    return total.reduce((value, element) => value + element);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        decoration: BoxDecoration(
          color: isSecondTeam ? Colors.white : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(teamShortForm,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            const Spacer(),
            Row(
              children: score
                  .map((e) => Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.055),
                        child: Text(
                          e.toString(),
                        ),
                      ))
                  .toList(),
            ),
            const Spacer(),
            Text(
              "${getTotal(score)}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
