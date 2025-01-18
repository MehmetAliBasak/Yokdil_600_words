import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yokdil_app/dictionary_reader.dart';
import 'screens/not_learned_words_page.dart';
import 'words.dart';
import 'json_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:turkish/turkish.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  await handleSaveData();

  runApp(
    DevicePreview(
      enabled: false,
        builder: (context) => MainPage())

  );
}

Future<void> handleSaveData() async {
  await JsonUtils.initialize();

  DictionaryReader reader = DictionaryReader();
  await reader.loadDictionaryFromAssets();

  Words.words_learned = await JsonUtils.readLearnedWordsFromFile();
  Words.words_not_learned = await JsonUtils.readNotLearnedWordsFromFile();
  print("learned: " + Words.words_learned.toString());
  print("not learned: " + Words.words_not_learned.toString());

}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WordListNotLearnedCubit()),
        BlocProvider(create: (_) => CarouselControllerCubit()),
        BlocProvider(create: (_) => WordListLearnedCubit()),
      ],
      child:
      ResponsiveSizer(
          builder: (context, orientation, screenType) {
          return MaterialApp(
            title: 'YÖKDİL 600 KELİME',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
            ),
            home:AnimatedSplashScreen(
              duration: 1,
              splash: "assets/yokdil_logo_with_curve.png",
              splashIconSize: 300,
              nextScreen: NotLearnedWordPage(title: 'YÖKDİL 600 KELİME'),
              splashTransition: SplashTransition.fadeTransition,
              pageTransitionType: PageTransitionType.topToBottom,
              backgroundColor: Color.fromARGB(255, 243, 243, 218),
            ),

          );
          }
      )
    );
  }
}

class CarouselControllerCubit extends Cubit<CarouselController> {
  CarouselControllerCubit() : super(CarouselController());

  void next() {
    state.nextPage();
  }

  void previous() {
    state.previousPage();
  }
}

class WordListLearnedCubit extends Cubit<List<String>> {
  WordListLearnedCubit() : super(Words.words_learned);

  void addWord(String word) {
    emit([...state, word]);
    JsonUtils.writeLearnedWordsToFile(state);

  }
  void removeWord(String word) {
    emit(state.where((w) => w != word).toList());
    JsonUtils.writeLearnedWordsToFile(state);
  }
}
class WordListNotLearnedCubit extends Cubit<List<String>> {
  WordListNotLearnedCubit() : super(Words.words_not_learned);

  void shuffle() {
    emit([...state..shuffle()]);

  }

  void removeWord(String word) {
    emit(state.where((w) => w != word).toList());
    JsonUtils.writeNotLearnedWordsToFile(state);
  }
  void addWord(String word) {
    emit([...state, word]);
    JsonUtils.writeNotLearnedWordsToFile(state);
  }
}

extension StringExtensions on String {
  String capitalizeTr() {
    return "${turkish.toUpperCase(this[0])}${this.substring(1)}";

  }
  String capitalizeEn() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}