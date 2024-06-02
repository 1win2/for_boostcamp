import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benifit.dart';
import 'package:flutter/material.dart';

import 'benefit_dummy.dart';

class benefitList extends StatelessWidget {
  const benefitList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext ctx, int index) {
        return Tap(
            onTap: () {
              print('hi');
            },
            child: BenefitObject(benefitlist[index]));
      },
      itemCount: 6,
    );
  }
}

class BenefitObject extends StatelessWidget {
  const BenefitObject(this.benefitOJT, {super.key});
  final Benefit benefitOJT;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 60,
      child: Row(
        children: [
          Image.asset(benefitOJT.imagepath),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              benefitOJT.title.text.size(17).bold.make(),
              benefitOJT.sub.text.color(Colors.blue).make(),
            ],
          ),
        ],
      ),
    );
  }
}
