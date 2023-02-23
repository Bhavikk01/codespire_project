import 'package:codespire_app/app/services/firebase.dart';
import 'package:codespire_app/app/services/storage.dart';
import 'package:codespire_app/app/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/routes.dart';
import 'app/screens/auth_screen/signInPage.dart';
import 'app/screens/getx_helper/controllers/post_controller.dart';
import 'app/user_store.dart';
import 'app/widgets/authWidget.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'food-delivery-flutter-project',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put<FirebaseFireStore>(FirebaseFireStore());
  Get.put<StorageService>(await StorageService().init());
  Get.put<UserStore>(UserStore());
  Get.put<PostController>(PostController());
  runApp(const ProviderScope(
      child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                brightness: Brightness.light,
                primary: Colors.orange,
                seedColor: Colors.orange
            )
        ),
        getPages: RouteHelper.routes,
        home: Scaffold(
          body: AuthWidget(
            signedInBuilder: (context) => const HomePage(),
            nonSignedInBuilder: (_) => const SignInPage(),
          ),
        ),)
    );
  }
}
