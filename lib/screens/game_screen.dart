import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tabuu/screens/home_screen.dart';
import 'package:tabuu/screens/pause_screen.dart';
import 'package:tabuu/screens/summary_screen.dart';
import '../constants/constants.dart';
import '../constants/lang.dart';
import '../custom_painters/button_actions_view.dart';
import '../custom_painters/kart_katman_view.dart';
import '../custom_painters/time_score_view.dart';
import '../constants/kartlar.dart';
import '../constants/repository.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final PageController _pageController = PageController();
  final TabuRepository _tabuRepository = TabuRepository();

  late bool _isLangTR;
  late Timer _timer;
  late int _start;
  late int _tabuCezasi;
  late int _pasHakki;
  late int _totalPasHakki;
  late int _winScore;
  late int _totalTime;
  late String _teamA;
  late String _teamB;

  bool _isTurnA = true;
  bool _isPause = false;
  int _yapilanDogru = 0;
  int _yapilanTabu = 0;
  int _totalScoreTeamA = 0;
  int _totalScoreTeamB = 0;
  bool _isButtonDisable = false;

  void _startTimer() {
    setState(() {});
    _timer = Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) => setState(() {
              if (_start == 0.0) {
                _timer.cancel();
                _start = _totalTime;
                _changeTeam();
              } else {
                _start -= 1;
              }
            }));
  }

  void _success() {
    setState(() {
      _yapilanDogru++;
      _isTurnA ? _totalScoreTeamA++ : _totalScoreTeamB++;
      if (_totalScoreTeamA == _winScore) {
        print("Winner Ekranı yapılacak");
      } else if (_totalScoreTeamB == _winScore) {
      } else {
        _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.decelerate.flipped);
      }
      _buttonDisabledF();
    });
  }

  void _unSuccess() {
    setState(() {
      _yapilanTabu += 1;
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.elasticIn);
    });
    _buttonDisabledF();
  }

  void _pas() {
    if (_pasHakki > 0) {
      setState(() {
        _pasHakki -= 1;
        _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOutCubicEmphasized);
      });
    }
    _buttonDisabledF();
  }

  void _pauseOrContinue() {
    setState(() {
      _isPause = !_isPause;
      _isPause ? _timer.cancel() : _startTimer();
    });
    _buttonDisabledF();
  }

  void _changeTeam() async {
    _isTurnA
        ? _tabuRepository.setScoreA((_yapilanDogru - (_yapilanTabu * _tabuCezasi)))
        : _tabuRepository.setScoreB((_yapilanDogru - _yapilanTabu * _tabuCezasi));
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        //return ScoreTable(teamA: _teamA, teamB: _teamB, yapilanDogru: _yapilanDogru, yapilanTabuSayisi: _yapilanTabu, isTurnA: _isTurnA);
        return SummaryScreen(correct: _yapilanDogru, wrong: _yapilanTabu, teamNameA: _teamA, teamNameB: _teamB);
      },
    ));
    _isTurnA = !_isTurnA;
    _pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.fastLinearToSlowEaseIn);
    _yapilanDogru = 0;
    _yapilanTabu = 0;
    _pasHakki = _totalPasHakki;
    _startTimer();
  }

  void _buttonDisabledF() async {
    _isButtonDisable = !_isButtonDisable;
    Timer(const Duration(seconds: 1), () {
      setState(() {
        _isButtonDisable = !_isButtonDisable;
      });
    });
  }

  void _goResume() {
    Navigator.of(context).pop();
  }

  void _goAnaMenu() {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (context) {
        return const HomeScreen();
      },
    ), (route) => false);
  }

  @override
  initState() {
    _isLangTR = _tabuRepository.getIsLangTR();
    _teamA = _tabuRepository.getTeamA();
    _teamB = _tabuRepository.getTeamB();
    _totalTime = _tabuRepository.getTime();
    _start = _tabuRepository.getTime();
    _tabuCezasi = _tabuRepository.getTabuCezasi();
    _pasHakki = _tabuRepository.getPasHakki();
    _totalPasHakki = _tabuRepository.getPasHakki();
    _winScore = _tabuRepository.getWinScore();
    kartlar.shuffle();
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    TabuRepository.scoreA = 0;
    TabuRepository.scoreB = 0;
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            _TabuText(height: height / 17, width: width / 2),
            _TakimAdi(
              height: height / 14,
              width: width,
              teamName: _isTurnA ? _teamA : _teamB,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _SkorAndSure(text: titles[_isLangTR]["sure"], skorOrSure: _start, width: width, height: height),
                  InkWell(
                      onTap: () async {
                        _pauseOrContinue();
                        await showDialog(
                            context: context,
                            builder: (context) {
                              return PauseScreen(
                                goAnaMenu: _goAnaMenu,
                                goResume: _goResume,
                              );
                            });
                        _pauseOrContinue();
                      },
                      child: const Icon(Icons.pause_outlined, size: 30, color: Colors.white)),
                  _SkorAndSure(
                      text: titles[_isLangTR]["skor"],
                      skorOrSure: (_yapilanDogru - _yapilanTabu * _tabuCezasi),
                      width: width,
                      height: height),
                ],
              ),
            ),
            Opacity(
                opacity: _isPause ? 0 : 1,
                child: _KartKatman(height: height, width: width, pageController: _pageController)),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ActionButtons(
                      buttonName: titles[_isLangTR]["dogru"],
                      onTap: _isButtonDisable ? null : _success,
                      color: Colors.green,
                      height: height,
                      width: width),
                  _ActionButtons(
                      buttonName: titles[_isLangTR]["tabu"],
                      onTap: _isButtonDisable ? null : _unSuccess,
                      color: Colors.red,
                      height: height,
                      width: width),
                  _ActionButtons(
                      buttonName: titles[_isLangTR]["pas"] + " ($_pasHakki)",
                      onTap: _isButtonDisable ? null : _pas,
                      color: Colors.purple,
                      height: height,
                      width: width),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({
    Key? key,
    required this.height,
    required this.width,
    required this.buttonName,
    required this.color,
    this.onTap,
  }) : super(key: key);

  final double height;
  final double width;
  final String buttonName;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
          height: height / 17,
          width: width / 4,
          child: ButtonActionsView(
            color: color,
            textStyle: kTextStyleGame,
            buttonName: buttonName,
          )),
    );
  }
}

class _SkorAndSure extends StatelessWidget {
  const _SkorAndSure({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    required this.skorOrSure,
  }) : super(key: key);
  final String text;
  final double height;
  final double width;
  final int skorOrSure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 14,
      width: width / 2.7,
      child: TimeScoreView(
        child: Row(
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0), child: Text(text, style: kTextStyleGame)),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text("$skorOrSure", style: kTextStyleGame)),
          ],
        ),
      ),
    );
  }
}

class _TabuText extends StatelessWidget {
  const _TabuText({Key? key, required this.height, required this.width}) : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: SizedBox(
          height: height,
          width: width,
          child: Image.asset("assets/images/tabuText.png"),
        ),
      ),
    );
  }
}

class _TakimAdi extends StatelessWidget {
  const _TakimAdi({Key? key, required this.height, required this.width, required this.teamName}) : super(key: key);
  final double height;
  final double width;
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.amberAccent[400]!,
            Colors.amberAccent[700]!,
          ]),
        ),
        child: Center(child: Text(teamName, style: kTextStyleTeamName)),
      ),
    );
  }
}

class _KartKatman extends StatelessWidget {
  const _KartKatman({
    Key? key,
    required this.height,
    required this.width,
    required this.pageController,
  }) : super(key: key);

  final double height;
  final double width;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height / 2.5,
        width: width / 1.75,
        child: KartKatmanView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                itemCount: kartlar.length,
                itemBuilder: (context, index1) {
                  return ListView.builder(
                      itemCount: kartlar[index1].length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index2) {
                        return index2 == 0
                            ? Center(
                                child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child:
                                        Text("${kartlar[index1][index2]}", style: kTextStyleTabuBaslik, maxLines: 1)))
                            : Center(
                                child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text("${kartlar[index1][index2]}",
                                        style: kTextStyleTabuYasaklar, maxLines: 1)));
                      });
                }),
          ),
        ));
  }
}
