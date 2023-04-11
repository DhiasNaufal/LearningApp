import 'package:get/get.dart';
import 'package:learning_cdss/controllers/question_paper/quiz_paper_controller.dart';

import 'package:learning_cdss/screens/home/home_screen.dart';
import 'package:learning_cdss/screens/introduction/intro_screen.dart';
import 'package:learning_cdss/screens/splash/splash_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          page: () => const SplashScreen(),
          name: SplashScreen.routeName,
        ),
        GetPage(
          page: () => const AppIntroScreen(),
          name: AppIntroScreen.routeName,
        ),
        GetPage(
            page: () => const HomeScreen(),
            name: HomeScreen.routeName,
            binding: BindingsBuilder(() {
              Get.put(QuizPaperController());
            })),
        GetPage(page: () => const LoginScreen(), name: LoginScreen.routeName),
        GetPage(
            page: () => const ProfileScreen(),
            name: ProfileScreen.routeName,
            binding: BindingsBuilder(() {
              Get.put(QuizPaperController());
              Get.put(ProfileController());
            })),
        GetPage(
            page: () => LeaderBoardScreen(),
            name: LeaderBoardScreen.routeName,
            binding: BindingsBuilder(() {
              Get.put(LeaderBoardController());
            })),
        GetPage(
            page: () => QuizeScreen(),
            name: QuizeScreen.routeName,
            binding: BindingsBuilder(() {
              Get.put<QuizController>(QuizController());
            })),
        GetPage(
            page: () => const AnswersCheckScreen(),
            name: AnswersCheckScreen.routeName),
        GetPage(
            page: () => const QuizOverviewScreen(),
            name: QuizOverviewScreen.routeName),
        GetPage(page: () => const Resultcreen(), name: Resultcreen.routeName),
      ];
}
