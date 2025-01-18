import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yokdil_app/main.dart';

class CustomCard extends StatefulWidget {
  CustomCard({
    required this.word,
    required this.learnWordFunction,
    required this.icon,
    this.iconTuttorialKey,
  });

  final String word;
  final Function learnWordFunction;
  final IconData icon;
  final GlobalKey? iconTuttorialKey;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard>
    with SingleTickerProviderStateMixin {
  late String displayedWord;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.transparent,
      child: Container(
        width: 80.w,
        height: 50.h,
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Colors.orange, Color(0xffbb6303)
          ], center: Alignment.center,radius: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                widget.word.capitalizeTr(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp, ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              bottom: 1.h,
              right: 2.w,
              child: IconButton(
                onPressed: () {
                  widget.learnWordFunction();
                },
                icon: Icon(
                  key: widget.iconTuttorialKey,
                  widget.icon,
                  size: 40,
                  color: Colors.white.withAlpha(200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
