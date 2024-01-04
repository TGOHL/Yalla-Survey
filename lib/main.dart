import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/home/cubit/home_cubit.dart';
import 'shared/cubit/add_researcher/add_researcher_cubit.dart';

import 'screens/welcome/cubit/welcome_cubit.dart';
import 'shared/config/observer.dart';
import 'shared/config/router.dart';
import 'shared/config/themes.dart';
import 'shared/translations/codegen_loader.g.dart';

/*
  * everytime after editing translations Jsons run this two lines in order
  
  1 => flutter pub run easy_localization:generate -S "assets/translations" -O "lib/shared/translations"
  2 => flutter pub run easy_localization:generate -S "assets/translations" -O "lib/shared/translations" -o "local_keys.g.dart" -f keys
*/

// TODO update sdk: '>=2.18.4 <3.0.0'

/*
! add this in podfile for premission handler to work on ios devices 
! this file will appear in ios folder after first run for the app
post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)

    target.build_configurations.each do |config|
      # You can remove unused permissions here
      # for more infomation: https://github.com/BaseflowIT/flutter-permission-handler/blob/master/permission_handler/ios/Classes/PermissionHandlerEnums.h
      # e.g. when you don't need camera permission, just add 'PERMISSION_CAMERA=0'
      config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
        '$(inherited)',

        ## dart: PermissionGroup.camera
        'PERMISSION_CAMERA=1',

        ## dart: PermissionGroup.microphone
        'PERMISSION_MICROPHONE=1',

        ## dart: PermissionGroup.photos
        'PERMISSION_PHOTOS=1',
       
        ## dart: PermissionGroup.notification
        'PERMISSION_NOTIFICATIONS=1',

      ]

    end
  end
end
*/

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WelcomeCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => AddResearcherCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(392, 850),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: 'Yalla Survey',
            theme: AppThemes.lightTheme(context),
            home: child,
            routes: AppRouter.router(),
          );
        },
      ),
    );
  }
}
