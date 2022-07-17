import 'package:flutter/material.dart';
import 'package:tabuu/custom_painters/pause_layer_view.dart';

import '../constants/lang.dart';
import '../constants/repository.dart';

class PauseScreen extends StatelessWidget {
  PauseScreen({Key? key, required this.goAnaMenu, required this.goResume}) : super(key: key);

  final VoidCallback goAnaMenu;
  final VoidCallback goResume;
  final TabuRepository tabuRepository = TabuRepository();

  @override
  Widget build(BuildContext context) {
    bool isLangTR = tabuRepository.getIsLangTR();
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 300,
          child: PauseLayerView(
            goAnaMenu: goAnaMenu,
            goResume: goResume,
            buttonText1: titles[isLangTR]["anaMenu"],
            buttonText2: titles[isLangTR]["devamEt"],
          ),
        ),
      ),
    );
  }
}
