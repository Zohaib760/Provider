import 'package:flutter/material.dart';
import 'package:provider_tutorial/Provider/count_provider.dart';
import 'package:provider_tutorial/Provider/favorite_provider.dart';
import 'package:provider_tutorial/Provider/provider_exampleONe.dart';
import 'package:provider_tutorial/Provider/theme_provider.dart';
import 'package:provider_tutorial/Screens/counter.dart';
import 'package:provider_tutorial/Screens/dark_theme.dart';
import 'package:provider_tutorial/Screens/example_one.dart';
import 'package:provider_tutorial/Screens/favorite.dart';
import 'package:provider_tutorial/part_4.dart';
import 'package:provider/provider.dart ';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
  
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
      ChangeNotifierProvider(create: (_)=>CountProvider()),
      ChangeNotifierProvider(create: (_)=>FavoriteProvider()),
      ChangeNotifierProvider(create: (_)=> ThemeChanger())
    ],
        child: Builder(builder: (BuildContext context){
          final themeChanger =  Provider.of<ThemeChanger>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
              appBarTheme: AppBarTheme(
                color: Colors.blue
              )

            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
                primarySwatch: Colors.red,
                primaryColor: Colors.red,
              iconTheme: IconThemeData(
                  color: Colors.pink
              ),
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.teal
              )
            ),
            debugShowCheckedModeBanner: false,
            home: DarkTheme(),
          );
        })
    );

  }
}

