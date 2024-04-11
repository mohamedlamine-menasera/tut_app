import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {

  // Named constructor used to create an instance of MyApp. This constructor is marked as private (_internal), meaning it cannot be accessed outside the class.
  MyApp._internal();
  int appState = 0;

  // Defines a static instance of MyApp using the private constructor. This creates a singleton pattern, ensuring that only one instance of MyApp can exist.
  static final MyApp _instance = MyApp._internal();

  // Defines a factory constructor for MyApp. Factory constructors are used to return an instance of a class. In this case, it returns the single instance _instance of MyApp
  factory MyApp() => _instance;


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.onBoardingRoute,
    );
  }
}