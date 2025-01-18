import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yokdil_app/main.dart';

class QuizElevatedButton extends StatefulWidget {
  const QuizElevatedButton(
      {super.key,
      required this.buttonAnswer,
      required this.id,
      required this.trueWord,
      required this.onTap,
      required this.buttonColor});
  final String buttonAnswer;
  final String id;
  final String trueWord;
  final Function() onTap;
  final Color buttonColor;

  @override
  State<QuizElevatedButton> createState() => _QuizElevatedButtonState();
}

class _QuizElevatedButtonState extends State<QuizElevatedButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: widget.onTap,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              decoration: BoxDecoration(color: widget.buttonColor,borderRadius: BorderRadius.circular(25),),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text("${widget.buttonAnswer.capitalizeTr()}", textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: widget.buttonColor,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 1.w,
                  color:Color.fromARGB(255, 240, 240, 216),
                ),
              ),
              width: 10.w,
              height: 5.h,
              child: Text("${widget.id}",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),

            ),
          ],
        ),
      ),
    );
  }
}



