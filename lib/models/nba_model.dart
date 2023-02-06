import 'models.dart';

enum MatchEnum {
  COMPLETED,
  LIVE,
  UPCOMING,
}

class NBAModel {
  final TeamModel teamModel1;
  final TeamModel teamModel2;
  final DateTime matchTime;
  final MatchEnum status;

  final List<int> scoreTeam1;
  final List<int> scoreTeam2;
  final String player1;
  final String player2;

  NBAModel({
    required this.teamModel1,
    required this.teamModel2,
    required this.matchTime,
    required this.status,
    required this.scoreTeam1,
    required this.scoreTeam2,
    required this.player1,
    required this.player2,
  });
}
