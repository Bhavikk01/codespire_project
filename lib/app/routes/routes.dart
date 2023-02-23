import 'package:get/get.dart';

import '../screens/home_page.dart';
import '../screens/auth_screen/signInPage.dart';
import 'route_paths.dart';

class RouteHelper{

  static List<GetPage> routes=[

    GetPage(
      name: RoutePaths.homePage,
      page: ()=> const HomePage(),
    ),

    GetPage(
      name: RoutePaths.signIn,
      page: ()=> const SignInPage(),
    ),

  ];
}