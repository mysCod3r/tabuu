class TabuRepository {
  static bool isLangTR = true;
  static String? teamA;
  static String? teamB;
  static int? scoreA;
  static int? scoreB;
  static int? time = 60;
  static int? tabuCezasi = 1;
  static int? pasHakki = 3;
  static int? winScore = 100;


  bool getIsLangTR(){
    return isLangTR;
  }

  void setIsLangTR(){
    isLangTR = !isLangTR;
  }

  void setTeamA(String nameA) {
    teamA = nameA;
  }

  String getTeamA() {
    if(teamA == null && isLangTR){
      return "TAKIM 1";
    }else if(teamA == null && !isLangTR){
      return "TEAM 1";
    }else{
      return teamA!;
    }
  }

  void setTeamB(String nameB) {
    teamB = nameB;
  }

  String getTeamB() {
    if(teamB == null && isLangTR){
      return "TAKIM 2";
    }else if(teamB == null && !isLangTR){
      return "TEAM 2";
    }else{
      return teamB!;
    }  }

  void setScoreA(int score) {
    if (scoreA != null) {
      scoreA = scoreA! + score;
    } else {
      scoreA = score;
    }
  }

  int getScoreA() {
    return scoreA ?? 0;
  }

  void setScoreB(int score) {
    if (scoreB != null) {
      scoreB = scoreB! + score;
    } else {
      scoreB = score;
    }
  }

  int getScoreB() {
    return scoreB ?? 0;
  }

  void setTime(int value) {
    time = value;
  }

  int getTime() {
    return time!;
  }

  void setTabuCezasi(int value) {
    tabuCezasi = value;
  }

  int getTabuCezasi() {
    return tabuCezasi!;
  }

  void setPasHakki(int value) {
    pasHakki = value;
  }

  int getPasHakki() {
    return pasHakki!;
  }

  void setWinScore(int value) {
    winScore = value;
  }

  int getWinScore() {
    return winScore!;
  }


}
