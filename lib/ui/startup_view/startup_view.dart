import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:umair_shaikh/app/app_images.dart';
import 'package:umair_shaikh/shared/ui_helpers.dart';

import '../../shared/styles.dart';
import 'startup_viewmodel.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhiteColor1,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Image.asset(
                  backImage,
                  scale: 4,
                ),
              ),
              verticalSpaceMedium,
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  cubImage,
                  scale: 4,
                ),
              ),
              verticalSpaceRegular,
              Container(
                height: screenHeight(context) * 0.6,
                decoration: BoxDecoration(
                  color: kcDarkColor5,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          forkImage,
                          scale: 4,
                        ),
                        CircleAvatar(
                          radius: 100,
                          backgroundColor: kcDarkColor3,
                          backgroundImage: model.pickedImage != null
                              ? FileImage(
                                  File(model.pickedImage!.path),
                                )
                              : null,
                        ),
                        Image.asset(
                          spoonImage,
                          scale: 4,
                        ),
                      ],
                    ),
                    verticalSpaceRegular,
                    model.pickedImage == null
                        ? Column(
                            children: [
                              const Text(
                                'Click your Meal',
                                style: TextStyle(fontSize: 20),
                              ),
                              verticalSpaceRegular,
                              GestureDetector(
                                onTap: () {
                                  model.imagePicker(context);
                                },
                                child: Container(
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: kcWhiteColor1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              const Text(
                                'Will you eat this ?',
                                style: TextStyle(fontSize: 20),
                              ),
                              verticalSpaceRegular,
                              GestureDetector(
                                onTap: () {
                                  model.navigateToEnd();
                                },
                                child: Container(
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: kcWhiteColor1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
      // onModelReady: (StartUpViewModel model) => model.startupLogic(context),
    );
  }
}
