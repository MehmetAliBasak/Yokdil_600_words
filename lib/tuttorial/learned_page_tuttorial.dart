import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:flutter/material.dart';

List<TargetFocus> tuttorialForLearnedPage({
  required GlobalKey iconKey,
  required GlobalKey appBarButtonKey,
}) {
  List<TargetFocus> learnedPageTargets = [];
  learnedPageTargets.add(
    TargetFocus(
      keyTarget: iconKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      identify: "icon",
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return  Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "öğrendiklerim sayfasındasınız, eğer bu kelimeyi öğrenmediğinizi düşünüyorsanız bu butona basarak kelimeyi öğrenmediklerim sayfasına geri yollayabilirsiniz",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "İKONA DOKUNUN!",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
                  textAlign: TextAlign.center,
                )
              ],
            );
          },
        ),
      ],
    ),
  );
  learnedPageTargets.add(
    TargetFocus(
      keyTarget: appBarButtonKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      identify: "appBarButton",
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return  Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Harika!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Turumuz bitti. Bu butona basarak 'Öğrenmediklerim' sayfasına dönebilir ve kartları sola kaydırarak öğrenmeye başlayabilirsiniz.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "BUTONA DOKUNUN!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            );
          },
        ),
      ],
    ),
  );


  return learnedPageTargets;
}
