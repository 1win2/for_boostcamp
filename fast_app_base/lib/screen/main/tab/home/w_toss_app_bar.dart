import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TossAppBar extends StatefulWidget {
  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color.fromARGB(255, 15, 15, 15),
      child: Row(
        children: [
          Image.asset('assets/image/icon/toss.png'),
          Expanded(child: Container()),
          Image.asset(
            'assets/image/icon/map_point.png',
          ).p(12),
          Stack(
            children: [
              Image.asset('assets/image/icon/notification.png').p(12),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ).p(5),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
