import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:flutter/material.dart';

List<TargetFocus> tuttorialForNotLearnedPage({
  required GlobalKey frontCardKey,
  required GlobalKey backCardKey,
  required GlobalKey quizKey,
  required GlobalKey iconKey,
  required GlobalKey appBarButtonKey,
}) {
  List<TargetFocus> notLearnedPageTargets = [];
  notLearnedPageTargets.add(
    TargetFocus(
      keyTarget: frontCardKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      identify: "frontCard",
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Yökdil 600 Kelime Uygulamasına hoş geldiniz!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Ekranda, Yökdil sınavında çıkmış olan İngilizce kelimelerin bulunduğu kartlar göreceksiniz. Bu kelimelerin Türkçe karşılığını görmek için",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.5.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "KARTA DOKUNUN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.5.sp,
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
  notLearnedPageTargets.add(
    TargetFocus(
      keyTarget: backCardKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      identify: "backCard",
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Harika!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.5.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Kelimenin İngilizce karşılığına dönmek için karta tekrar dokunun.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.5.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ],
    ),
  );

  notLearnedPageTargets.add(
    TargetFocus(
      keyTarget: quizKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      identify: "quiz",
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eğer bilginizi sınamak isterseniz, bu kısımda Türkçe kelimeler içeren şıklar bulacaksınız. Karttaki İngilizce kelimenin karşılığı olduğunu düşündüğünüz şıkkı seçerek kendinizi deneyebilirsiniz.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ],
    ),
  );
  notLearnedPageTargets.add(
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
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Eğer karttaki kelimeyi öğrendiyseniz, bu ikona dokunarak kelimeyi 'Öğrendiklerim' sayfasına yollayabilirsiniz.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "İKONA DOKUNUN!",
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
  notLearnedPageTargets.add(
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
            return Column(
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
                  "Eğer öğrendiğiniz kelimeleri gözden geçirmek isterseniz, bu butona dokunarak 'Öğrendiklerim' sayfasına gidebilirsiniz.",
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

  return notLearnedPageTargets;
}
