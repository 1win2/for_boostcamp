import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';

import 'w_benefit_list.dart';
import 'w_benefit_main.dart';

class BenefitFragment extends StatelessWidget {
  const BenefitFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            benefitMain(),
            benefitList(),
          ],
        ),
      ),
    );
  }
}
