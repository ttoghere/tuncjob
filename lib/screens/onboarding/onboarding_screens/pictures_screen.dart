import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tuncjob/screens/onboarding/widgets/widgets.dart';

class Pictures extends StatelessWidget {
  final TabController tabController;

  const Pictures({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(text: 'Add 2 or More Pictures'),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomImageContainer(),
                  CustomImageContainer(),
                  CustomImageContainer(),
                ],
              ),
              Row(
                children: [
                  CustomImageContainer(),
                  CustomImageContainer(),
                  CustomImageContainer(),
                ],
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 4,
                selectedColor: Theme.of(context).primaryColor,
                unselectedColor: Theme.of(context).colorScheme.background,
              ),
              const SizedBox(height: 10),
              CustomButton(tabController: tabController, text: 'NEXT STEP'),
            ],
          ),
        ],
      ),
    );
  }
}
