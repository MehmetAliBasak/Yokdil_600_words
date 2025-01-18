import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dismissible_carousel_viewpager/dismissible_carousel_viewpager.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yokdil_app/widgets/custom_flip_card_widget.dart';
import 'package:yokdil_app/screens/learned_words_page.dart';
import '../dictionary_reader.dart';
import '../main.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import '../tuttorial/not_learned_page_tuttorial.dart';
import '../widgets/quiz_widget.dart';
import '../words.dart';

class NotLearnedWordPage extends StatefulWidget {
  const NotLearnedWordPage({super.key, required this.title});
  final String title;

  @override
  State<NotLearnedWordPage> createState() => _NotLearnedWordPageState();
}

class _NotLearnedWordPageState extends State<NotLearnedWordPage> {
  int centeredWordIndex = 0;
  int denemeIndex = 0;
  final FlipCardController flipCardController = FlipCardController();

  final frontCardTuttorialKey = GlobalKey();
  final backCardTuttorialKey = GlobalKey();
  final quizTuttorialKey = GlobalKey();
  final iconTuttorialKey = GlobalKey();
  final appBarButtonTuttorialKey = GlobalKey();

  late TutorialCoachMark tutorialCoachMark;

  void _initAddSiteInAppTour() {
    tutorialCoachMark = TutorialCoachMark(
      onClickTarget: (target) {
        if (target.identify == "frontCard") {
          flipCardController.flipcard();
        }
        if (target.identify == "backCard") {
          flipCardController.flipcard();
        }
        if (target.identify == "icon") {
          setState(() {
            centeredWordIndex--;
            centeredWordIndex = max(centeredWordIndex, 0);
          });
          learnWordAction(Words.words_not_learned[0]);
        }
        if (target.identify == "appBarButton") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LearnedWordPage(
                      title: "Öğrendiklerim",
                    )),
          );
        }
      },
      targets: tuttorialForNotLearnedPage(
        appBarButtonKey: appBarButtonTuttorialKey,
        quizKey: quizTuttorialKey,
        backCardKey: backCardTuttorialKey,
        frontCardKey: frontCardTuttorialKey,
        iconKey: iconTuttorialKey,
      ),
      colorShadow: Color.fromARGB(255, 18, 18, 18),

      paddingFocus: 10,
      hideSkip: true,
      opacityShadow: 0.9,
      onFinish: () {
        print("completed");
      },
    );
  }

  void _showInAppTour() {
    tutorialCoachMark.show(context: context);
  }

  void learnWordAction(String word) {
    context.read<WordListNotLearnedCubit>().removeWord(word);
    context.read<WordListLearnedCubit>().addWord(word);
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
    _prefs?.setBool("isFirst", false);
  }

  void _getPrefs() {
    setState(() {
      _isFirstOpen = _prefs?.getBool("isFirst") ?? true;
    });
    if (_isFirstOpen) {
      _setPrefs();
      _showInAppTour();
    }
    print("getPrefs method called, _isFirstOpen: $_isFirstOpen");
  }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5DC),
      appBar: AppBar(
        backgroundColor: Color(0xfff99400),
        title: Text(widget.title),
        actions: [
          Column(
            children: [
              TextButton.icon(
                key: appBarButtonTuttorialKey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LearnedWordPage(
                          title: "Öğrendiklerim",
                        )),
                  );
                },
                label: const Text(
                  "Öğrendiklerim",
                  style: TextStyle(color: Colors.black),
                ),
                icon: const Icon(Icons.check_circle_outline),
                style: TextButton.styleFrom(iconColor: Colors.black),
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(_isFirstOpen.toString()),
            ),
            Expanded(
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    BlocBuilder<WordListNotLearnedCubit, List<String>>(
                      builder: (context, words) {
                        return DismissibleCarouselViewPager(
                          onPageChanged: (index) {
                            setState(() {
                              centeredWordIndex = index;
                              denemeIndex = index;
                            });

                            print("page changed" + index.toString());
                          },
                          viewportFraction: 0.7,
                          itemCount: words.length,
                          itemBuilder: (context, index) {
                            Object data = words[index];
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              key: Key("$data"),
                              children: [
                                CustomFlipCard(
                                  frontCardTuttorialKey:
                                  words[index] == "regularly"
                                      ? frontCardTuttorialKey
                                      : null,
                                  backCardTuttorialKey:
                                  words[index] == "regularly"
                                      ? backCardTuttorialKey
                                      : null,
                                  iconTuttorialKey: words[index] == "regularly"
                                      ? iconTuttorialKey
                                      : null,
                                  centeredWord: words[denemeIndex],
                                  randomSeed: index,
                                  word: words[index],
                                  isNotLearnedPage: true,
                                  onPressAction: (data) {
                                    setState(() {
                                      centeredWordIndex--;
                                      centeredWordIndex =
                                          max(centeredWordIndex, 0);
                                      centeredWordIndex = min(
                                          centeredWordIndex, words.length - 1);
                                    });

                                    learnWordAction(data);
                                  },
                                  icon: Icons.check_circle_outline,
                                  flipController: flipCardController,
                                ),
                                AnimatedOpacity(
                                  opacity: (words[denemeIndex]) == words[index]
                                      ? 1
                                      : 0,
                                  duration: Duration(seconds: 1),
                                  child: QuizWidget(
                                    key: words[index] == "regularly"
                                        ? quizTuttorialKey
                                        : null,
                                    word: DictionaryReader
                                        .dictionary[words[index]]
                                        .toString(),
                                    randomSeed: index,
                                  ),
                                ),
                              ],
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
