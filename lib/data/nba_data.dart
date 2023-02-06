
import '../models/models.dart';

List<NBAModel> nbaData = [
  NBAModel(
    matchTime: DateTime.now(),
    status: MatchEnum.COMPLETED,
    teamModel1: TeamModel(
        shortName: "LAC",
        name: 'Clippers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/F36nQLCQ2FND3za-Eteeqg_96x96.png',
        city: 'Los Angeles'),
    teamModel2: TeamModel(
        shortName: "BKN",
        name: 'Nets',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    scoreTeam1: [20, 20, 20, 20],
    scoreTeam2: [20, 20, 20, 20],
    player1: '10 - 20',
    player2: '16 - 6',
  ),
  NBAModel(
    matchTime: DateTime.now(),
    status: MatchEnum.LIVE,
    teamModel1: TeamModel(
        shortName: "DEN",
        name: 'Lakers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',

        // logo: 'assets/images/lakers.png',
        city: 'Los Angeles'),
    teamModel2: TeamModel(
        shortName: "LAL",
        name: 'Clippers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    scoreTeam1: [20, 20, 20, 20],
    scoreTeam2: [20, 20, 20, 20],
    player1: 'Lebron James',
    player2: 'Kawhi Leonard',
  ),
  NBAModel(
    matchTime: DateTime.now(),
    status: MatchEnum.UPCOMING,
    teamModel1: TeamModel(
        shortName: "",
        name: 'Lakers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    teamModel2: TeamModel(
        shortName: "",
        name: 'Clippers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    scoreTeam1: [20, 20, 20, 20],
    scoreTeam2: [20, 20, 20, 20],
    player1: 'Lebron James',
    player2: 'Kawhi Leonard',
  ),
  NBAModel(
    matchTime: DateTime.now(),
    status: MatchEnum.UPCOMING,
    teamModel1: TeamModel(
        shortName: "",
        name: 'Lakers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    teamModel2: TeamModel(
        shortName: "",
        name: 'Clippers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    scoreTeam1: [20, 20, 20, 20],
    scoreTeam2: [20, 20, 20, 20],
    player1: 'Lebron James',
    player2: 'Kawhi Leonard',
  ),
  NBAModel(
    matchTime: DateTime.now(),
    status: MatchEnum.UPCOMING,
    teamModel1: TeamModel(
        shortName: "",
        name: 'Lakers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    teamModel2: TeamModel(
        shortName: "",
        name: 'Clippers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    scoreTeam1: [20, 20, 20, 20],
    scoreTeam2: [20, 20, 20, 20],
    player1: 'Lebron James',
    player2: 'Kawhi Leonard',
  ),
  NBAModel(
    matchTime: DateTime.now(),
    status: MatchEnum.UPCOMING,
    teamModel1: TeamModel(
        shortName: "",
        name: 'Lakers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    teamModel2: TeamModel(
        shortName: "",
        name: 'Clippers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    scoreTeam1: [20, 20, 20, 20],
    scoreTeam2: [20, 20, 20, 20],
    player1: 'Lebron James',
    player2: 'Kawhi Leonard',
  ),
  NBAModel(
    matchTime: DateTime.now(),
    status: MatchEnum.UPCOMING,
    teamModel1: TeamModel(
        shortName: "",
        name: 'Lakers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    teamModel2: TeamModel(
        shortName: "",
        name: 'Clippers',
        logo:
            'https://ssl.gstatic.com/onebox/media/sports/logos/-rf7eY39l_0V7J4ekakuKA_96x96.png',
        city: 'Los Angeles'),
    scoreTeam1: [20, 20, 20, 20],
    scoreTeam2: [20, 20, 20, 20],
    player1: 'Lebron James',
    player2: 'Kawhi Leonard',
  ),
];
