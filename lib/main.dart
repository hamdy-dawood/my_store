import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_store/Screens/Shopping_screen.dart';
import 'Screens/Home_Screen.dart';
import 'constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context)=>HomeScreen(),
        ShoppingScreen.id:(context)=>ShoppingScreen(),
        // AccountScreen.id:(context)=>AccountScreen(),

      },
      debugShowCheckedModeBanner: false,
      title: 'Electtrical Store',
      theme: ThemeData(

        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: KPrimaryColor,
        accentColor: KPrimaryColor),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE"), ],
        locale: Locale("ar", "AE"),

       home: HomeScreen(),
    );
  }
}


