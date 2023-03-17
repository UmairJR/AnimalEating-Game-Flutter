import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title Here', // Title here
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter()
          .onGenerateRoute, // generate app.router and import it here
    );
  }
}
