import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';

//import '../styles/themes.dart';
import '../contants/routes.dart';
import '../contants/globals.dart';
import '../types/localication_type.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    ProviderScope(
      child: EasyLocalization(
          supportedLocales: const [
            LocalicationType.trLocale,
            LocalicationType.enLocale
          ],
          path: LocalicationType.langAssetsPath,
          fallbackLocale: LocalicationType.enLocale,
          child: const App()),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      localizationsDelegates: [
        ...context.localizationDelegates,
        CountryLocalizations.delegate
      ],
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      title: 'Meals',
      theme: theme,
      //darkTheme: themeData.values.last,
      themeMode: ThemeMode.system,
      initialRoute: Routes.tabsScreen,
      routes: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
