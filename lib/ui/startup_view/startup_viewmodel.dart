import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';

class StartUpViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  XFile? pickedImage;
  imagePicker(BuildContext context) async {
    pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    notifyListeners();
  }

  navigateToEnd() {
    _navigationService.clearStackAndShow(Routes.endScreenView);
  }
}
