import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yokdil_app/widgets/quiz_elevatedButton.dart';

import '../words.dart';
import 'package:collection/collection.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({super.key, required this.word, required this.randomSeed});
  final String word;
  final int randomSeed;

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  List quizAnswersList = [];
  List<Color> buttonColors = [
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange
  ];

  void changeButtonColor(String answer, int button) {
    if (widget.word == answer) {
      setState(() {
        buttonColors[button] = Colors.green;

        buttonColors = buttonColors.asMap().entries.map((entry) {
          int index = entry.key;
          Color value = entry.value;
          return index == button ? value : Colors.red;
        }).toList();
      });
    } else {
      setState(() {
        buttonColors[button] = Colors.red;
      });
    }
  }

  void quizWordsList() {
    List tempAnswersList = ["${widget.word}"];
    int seed = widget.word.codeUnits.sum;
    Random random = Random(seed);

    for (int i = 0; i < 3; i++) {
      int randomIndex = random.nextInt(Words.words_english.length);
      tempAnswersList.add(Words.words_translated[randomIndex]);
    }
    tempAnswersList.shuffle(random);
    setState(() {
      quizAnswersList = tempAnswersList;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quizWordsList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          QuizElevatedButton(
            buttonColor: buttonColors[0],
            buttonAnswer: quizAnswersList[0],
            id: "A",
            trueWord: widget.word,
            onTap: () {
              changeButtonColor(quizAnswersList[0], 0);
            },
          ),
          QuizElevatedButton(
            buttonColor: buttonColors[1],
            buttonAnswer: quizAnswersList[1],
            id: "B",
            trueWord: widget.word,
            onTap: () {
              changeButtonColor(quizAnswersList[1], 1);
            },
          ),
          QuizElevatedButton(
            buttonColor: buttonColors[2],
            buttonAnswer: quizAnswersList[2],
            id: "C",
            trueWord: widget.word,
            onTap: () {
              changeButtonColor(quizAnswersList[2], 2);
            },
          ),
          QuizElevatedButton(
            buttonColor: buttonColors[3],
            buttonAnswer: quizAnswersList[3],
            id: "D",
            trueWord: widget.word,
            onTap: () {
              changeButtonColor(quizAnswersList[3], 3);
            },
          ),
        ],
      ),
    );
  }
}
