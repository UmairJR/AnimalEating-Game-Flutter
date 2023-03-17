// Run flutter pub run build_runner build --delete-conflicting-outputs this in terminal to generate app.locator and app.router

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:umair_shaikh/ui/end_screen/end_screen_view.dart';

import '../ui/startup_view/startup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    MaterialRoute(page: EndScreenView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
