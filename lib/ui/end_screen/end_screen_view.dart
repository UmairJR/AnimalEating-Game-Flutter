import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:umair_shaikh/shared/ui_helpers.dart';

import '../../shared/styles.dart';
import 'end_screen_viewmodel.dart';

class EndScreenView extends StatelessWidget {
  const EndScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EndScreenViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhiteColor1,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'GOOD JOB',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpaceSmall,
                GestureDetector(
                  onTap: () {
                    model.navigateToStart();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: const Text(
                      'Click Again',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => EndScreenViewModel(),
      // onModelReady: (EndScreenViewModel model) => model.EndScreenLogic(context),
    );
  }
}
