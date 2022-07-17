import 'package:flutter/material.dart';
import 'package:tabuu/constants/constants.dart';
import 'package:tabuu/constants/lang.dart';
import 'package:tabuu/custom_painters/button_actions_view.dart';
import 'package:tabuu/custom_painters/summary_table_view.dart';
import 'package:tabuu/custom_painters/summary_team_layer_1_view.dart';
import 'package:tabuu/custom_painters/summary_team_layer_2_view.dart';
import 'package:tabuu/custom_painters/summary_team_name_view.dart';

import '../custom_painters/summary_table_name_view.dart';
import '../constants/repository.dart';

class SummaryScreen extends StatelessWidget {
  SummaryScreen(
      {Key? key, required this.correct, required this.wrong, required this.teamNameA, required this.teamNameB})
      : super(key: key);

  final String teamNameA;
  final String teamNameB;
  final int correct;
  final int wrong;
  final TabuRepository tabuRepository = TabuRepository();

  @override
  Widget build(BuildContext context) {
    int totalScoreA = tabuRepository.getScoreA();
    int totalScoreB = tabuRepository.getScoreB();
    bool isLangTR = tabuRepository.getIsLangTR();
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const _TabuText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _TeamLayer(
                    layer: SummaryTeamLayer1View(score: "$totalScoreA", textStyle: kTextStyleSummaryScore),
                    teamName: SummaryTeamNameView(teamName: teamNameA, textStyle: kTextStyleSummaryTeamName)),
                _TeamLayer(
                    layer: SummaryTeamLayer2View(
                      score: "$totalScoreB",
                      textStyle: kTextStyleSummaryScore,
                    ),
                    teamName: SummaryTeamNameView(teamName: teamNameB, textStyle: kTextStyleSummaryTeamName)),
              ],
            ),
            _SummaryLayer(
                layer: SummaryTableView(
                    dogru: titles[isLangTR]["dogru"],
                    yanlis: titles[isLangTR]["yanlis"],
                    toplam: titles[isLangTR]["toplam"],
                    correct: correct,
                    wrong: wrong,
                    textStyle: kTextStyleSummaryTable),
                tableName:
                    SummaryTableNameView(tableName: titles[isLangTR]["ozet"], textStyle: kTextStyleSummaryTableName)),
            _ActionButtons(
                onTap: () => Navigator.of(context).pop(),
                buttonName: titles[isLangTR]["devamEt"],
                height: 50,
                width: (MediaQuery.of(context).size.width * 0.4),
                color: const Color(0xffa3195b))
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
          height: height,
          width: width,
          child: ButtonActionsView(
            color: color,
            textStyle: kTextStyleSummaryButton,
            buttonName: buttonName,
          )),
    );
  }
}

class _TabuText extends StatelessWidget {
  const _TabuText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("TABU", style: kTextStyleHome);
  }
}

class _TeamLayer extends StatelessWidget {
  const _TeamLayer({
    Key? key,
    required this.layer,
    required this.teamName,
  }) : super(key: key);

  final Widget layer;
  final Widget teamName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 3,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 12,
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                child: layer),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.width / 10,
              child: teamName),
        ],
      ),
    );
  }
}

class _SummaryLayer extends StatelessWidget {
  const _SummaryLayer({
    Key? key,
    required this.layer,
    required this.tableName,
  }) : super(key: key);

  final Widget layer;
  final Widget tableName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.width * 0.6,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 6.0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.58,
                height: MediaQuery.of(context).size.width * 0.58,
                child: layer),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width / 10,
              child: tableName),
        ],
      ),
    );
  }
}
