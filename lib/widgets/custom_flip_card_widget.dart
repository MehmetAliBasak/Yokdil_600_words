import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:turkish/turkish.dart';
import 'package:yokdil_app/dictionary_reader.dart';
import 'package:yokdil_app/main.dart';
import 'package:yokdil_app/widgets/quiz_widget.dart';
import 'custom_card_widget.dart';

class CustomFlipCard extends StatefulWidget {
  const CustomFlipCard({
    super.key,
    required this.word,
    required this.onPressAction,
    required this.icon,
    required this.isNotLearnedPage,
    required this.randomSeed,
    required this.centeredWord,
    // this.quizTuttorialKey,
    this.frontCardTuttorialKey,
    this.backCardTuttorialKey,
    this.iconTuttorialKey,
    required this.flipController,
  });

  final String word;
  final Function(String) onPressAction;
  final IconData icon;
  final bool isNotLearnedPage;
  final int randomSeed;
  final String centeredWord;
  // final GlobalKey? quizTuttorialKey;
  final GlobalKey? frontCardTuttorialKey;
  final GlobalKey? backCardTuttorialKey;
  final GlobalKey? iconTuttorialKey;
  final FlipCardController flipController;

  @override
  State<CustomFlipCard> createState() => _CustomFlipCardState();
}

class _CustomFlipCardState extends State<CustomFlipCard> {
  late FlipCardController controller = FlipCardController();
  bool _isFront = true;
  int centeredWordIndex = 0;

  void flipCardFixer() {
    if (widget.randomSeed == 0) {
      setState(() {
        controller = widget.flipController;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flipCardFixer();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
              animationDuration: Duration(milliseconds: 800),
              rotateSide: RotateSide.bottom,
              axis: FlipAxis.vertical,
              controller: controller,
              backWidget: KeyedSubtree(
                key: widget.backCardTuttorialKey,
                child: CustomCard(
                  word: "${DictionaryReader.dictionary[widget.word]!.capitalizeTr()}",
                  learnWordFunction: () {
                    widget.onPressAction(widget.word);
                  },
                  icon: widget.icon,
                ),
              ),
              frontWidget: KeyedSubtree(
                key: widget.frontCardTuttorialKey,
                child: CustomCard(
                  word: widget.word.capitalizeEn(),
                  learnWordFunction: () {
                    widget.onPressAction(widget.word);
                  },
                  icon: widget.icon,
                  iconTuttorialKey: widget.iconTuttorialKey,
                ),
              ),
            ),
            SizedBox(height: 1.h), // Kart ile butonlar arasında boşluk bırakır
            // AnimatedOpacity(
            //   opacity: (widget.centeredWord) == widget.word ? 1 : 0,
            //   duration: Duration(seconds: 2),
            //   child: Visibility(
            //     visible: widget.isNotLearnedPage,
            //     child: QuizWidget(
            //       key: widget.quizTuttorialKey,
            //       word: DictionaryReader.dictionary[widget.word]!,
            //       randomSeed: widget.randomSeed,
            //     ),
            //   ),
            // ),
          ],
        ),
        onTap: () {
          controller.flipcard();
        });
  }
}