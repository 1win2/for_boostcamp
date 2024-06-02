import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class benefitMain extends StatelessWidget {
  const benefitMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          '혜택'.text.size(25).bold.white.make(),
          Expanded(child: Container()),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue),
              ),
              'P'.text.white.bold.size(17).make(),
            ],
          ),
          const SizedBox(width: 7),
          '2,238원'.text.white.size(17).make(),
          const SizedBox(width: 7),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 15,
          )
        ],
      ),
    );
  }
}
