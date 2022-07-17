import 'package:flutter/material.dart';
import 'package:tabuu/constants/lang.dart';
import 'package:tabuu/constants/repository.dart';
import 'package:tabuu/screens/settings_screen.dart';
import '../constants/constants.dart';
import '../custom_painters/button_menu_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _goSettings() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 64.0),
              child: Text("TABU", style: kTextStyleHome),
            ),
            InkWell(
              onTap: _goSettings,
              child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 64),
                  width: 150,
                  height: 80,
                  child: ButtonMenuView(text: titles[TabuRepository.isLangTR]["oyna"], style: kTextStyleHome)),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  TabuRepository.isLangTR = !TabuRepository.isLangTR;
                });
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 64),
                  width: 150,
                  height: 80,
                  child: ButtonMenuView(text: titles[TabuRepository.isLangTR]["dil"], style: kTextStyleHome)),
            ),
          ],
        ),
      ),
    );
  }
}
