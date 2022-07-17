import 'package:flutter/material.dart';
import 'package:tabuu/constants/constants.dart';

import '../constants/lang.dart';
import '../custom_painters/bar_katman_view.dart';
import '../custom_painters/button_menu_view.dart';
import '../constants/repository.dart';
import 'game_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final TabuRepository _tabuRepository = TabuRepository();

  late double _time;
  late double _tabuCezasi;
  late double _winScore;
  late double _pasHakki;
  late bool _isLangTR;

  void _timeF(double value) {
    setState(() {
      _time = value;
      _tabuRepository.setTime(value.round());
    });
  }

  void _winScoreF(double value) {
    setState(() {
      _winScore = value;
      _tabuRepository.setWinScore(value.round());
    });
  }

  void _pasHakkiF(double value) {
    setState(() {
      _pasHakki = value;
      _tabuRepository.setPasHakki(value.round());
    });
  }

  void _tabuCezasiF(double value) {
    setState(() {
      _tabuCezasi = value;
      _tabuRepository.setTabuCezasi(value.round());
    });
  }

  void kaydetF() {
//    Navigator.of(context).pop();
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const GameScreen();
      },
    ));
  }

  void teamA(String value) {
    _tabuRepository.setTeamA(value);
  }

  void teamB(String value) {
    _tabuRepository.setTeamB(value);
  }

  @override
  void initState() {
    _isLangTR = _tabuRepository.getIsLangTR();
    _time = _tabuRepository.getTime().toDouble();
    _tabuCezasi = _tabuRepository.getTabuCezasi().toDouble();
    _winScore = _tabuRepository.getWinScore().toDouble();
    _pasHakki = _tabuRepository.getPasHakki().toDouble();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text("TABU", style: kTextStyleHome),
              ),
              _TextField(text: titles[_isLangTR]["takim1"], onChanged: teamA),
              _TextField(text: titles[_isLangTR]["takim2"], onChanged: teamB),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(titles[_isLangTR]["sure"], style: kTextStyleSettings),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: _Slider(onChanged: _timeF, deger: _time, min: 30, max: 150)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(titles[_isLangTR]["pasHakki"], style: kTextStyleSettings),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: _Slider(onChanged: _pasHakkiF, deger: _pasHakki, min: 1, max: 5),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FittedBox(child: Text(titles[_isLangTR]["tabuCezasi"], style: kTextStyleSettings)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: _Slider(onChanged: _tabuCezasiF, deger: _tabuCezasi, min: 1, max: 5),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(titles[_isLangTR]["kazanmaSkoru"], style: kTextStyleSettings),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: _Slider(onChanged: _winScoreF, deger: _winScore, min: 25, max: 125),
                  ),
                ],
              ),
              InkWell(
                onTap: kaydetF,
                child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 40),
                    width: 150,
                    height: 80,
                    child: ButtonMenuView(text: titles[_isLangTR]["basla"], style: kTextStyleHome)),
              )
            ],
          ),
        ));
  }
}

class _Slider extends StatelessWidget {
  const _Slider({Key? key, required this.deger, required this.onChanged, required this.max, required this.min})
      : super(key: key);
  final double deger;
  final double max;
  final double min;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        width: 200,
        height: 40,
        child: Stack(
          fit: StackFit.expand,
          children: [
            BarKatmanView(
              barText: deger.round(),
              size: const Size(35, 20),
              deger: (deger / min).round(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Opacity(
                  opacity: 0.0,
                  child: Slider(
                    value: deger,
                    onChanged: onChanged,
                    activeColor: Colors.black,
                    min: min,
                    max: max,
                    divisions: 4,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  _TextField({
    Key? key,
    required this.text,
    required this.onChanged,
  }) : super(key: key);
  final String text;
  final void Function(String) onChanged;

  final bool isLangTR = TabuRepository().getIsLangTR();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.amberAccent[700]!.withOpacity(0.2),
            Colors.amberAccent[400]!.withOpacity(0.7),
          ]),
        ),
        child: TextField(
            maxLength: 8,
            onChanged: onChanged,
            style: kTextStyleSettings,
            decoration: InputDecoration(
              counterText: "",
              icon: Text(text, style: kTextStyleSettings),
              border: InputBorder.none,
              hintText: titles[isLangTR]["takımAdiGirin"],
            )),
      ),
    );
  }
}
