import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dismissible_carousel_viewpager/dismissible_carousel_viewpager.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:yokdil_app/widgets/custom_flip_card_widget.dart';
import '../main.dart';
import 'dart:math';

import '../tuttorial/learned_page_tuttorial.dart';
import '../words.dart';
import 'not_learned_words_page.dart';


class LearnedWordPage extends StatefulWidget {
  const LearnedWordPage({super.key, required this.title});
  final String title;

  @override
  State<LearnedWordPage> createState() => _LearnedWordPageState();
}

class _LearnedWordPageState extends State<LearnedWordPage> {
  final FlipCardController flipCardController = FlipCardController();

  final iconTuttorialKey = GlobalKey();
  final appBarButtonTuttorialKey = GlobalKey();

  void learnWordAction(String word) {
    context.read<WordListLearnedCubit>().removeWord(word);
    context.read<WordListNotLearnedCubit>().addWord(word);
  }

  late TutorialCoachMark tutorialCoachMark;

  void _initAddSiteInAppTour() {
    tutorialCoachMark = TutorialCoachMark(
        onClickTarget: (target) {
          if (target.identify == "icon") {
            setState(() {

              centeredWordIndex--;
              centeredWordIndex = max(centeredWordIndex, 0);
            });
            learnWordAction(Words.words_not_learned[0]);
          }

          if (target.identify == "appBarButton") {
            Navigator.pop(context);
          }
        },
        targets: tuttorialForLearnedPage(
          appBarButtonKey: appBarButtonTuttorialKey,
          iconKey: iconTuttorialKey,
        ),
        colorShadow: Color.fromARGB(255, 18, 18, 18),
        paddingFocus: 10,
        hideSkip: true,
        opacityShadow: 0.9,
        onFinish: () {
          print("completed");
        });
  }

  void _showInAppTour() {
    Future.delayed(Duration(milliseconds: 175), () {
      tutorialCoachMark.show(context: context);
    });
  }


  @override
  void initState() {
    super.initState();
    _initAddSiteInAppTour();
    _initPrefs();
  }

  SharedPreferences? _prefs;
  bool _isFirstOpen = true;

  void _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _getPrefs();
  }

  void _setPrefs() {
    _prefs?.setBool("isFirstLearned", false);
  }

  void _getPrefs() {
    setState(() {
      _isFirstOpen = _prefs?.getBool("isFirstLearned") ?? true;
    });
    if (_isFirstOpen) {
      _setPrefs();
      _showInAppTour();
    }
    print("getPrefs method called, _isFirstOpen: $_isFirstOpen");
  }



  int centeredWordIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfff99400),
        title: Text(widget.title),
        actions: [
          Column(
            children: [
              TextButton.icon(
                key: appBarButtonTuttorialKey,
                onPressed: () {
                  Navigator.pop(context);
                },
                label: Text(
                  "Öğrenmediklerim",
                  style: TextStyle(color: Colors.black),
                ),
                icon: Icon(Icons.cancel_outlined),
                style: TextButton.styleFrom(iconColor: Colors.black),
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 1000,
          height: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: BlocBuilder<WordListLearnedCubit, List<String>>(
                    builder: (context, words) {
                      return DismissibleCarouselViewPager(
                        onPageChanged: (index) {
                          setState(() {
                            centeredWordIndex = index;
                          });

                          print("page changed" + index.toString());
                        },
                        viewportFraction: 0.7,
                        itemCount: words.length,
                        itemBuilder: (context, index) {
                          Object data = words[index];
                          return CustomFlipCard(
                            iconTuttorialKey: words[index] == "regularly"
                                ? iconTuttorialKey
                                : null,
                            centeredWord: words[centeredWordIndex],
                            randomSeed: index,
                            word: words[index],
                            key: Key("$data"),
                            isNotLearnedPage: false,
                            onPressAction: (data) {
                              print("before index" +index.toString());
                              setState(() {

                                centeredWordIndex--;
                                centeredWordIndex = max(centeredWordIndex, 0);
                                centeredWordIndex = min(centeredWordIndex, words.length-1);
                              });
                              learnWordAction(data);
                              print("after index" +index.toString());
                            },
                            icon: Icons.cancel_outlined,
                            flipController: flipCardController,
                          );
                        },
                        dismissalConfig: DismissalConfig(
                          dismissalTypes: [
                            DismissalType.fadeOut(),
                            DismissalType.slideOut(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
