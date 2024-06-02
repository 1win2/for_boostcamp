import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';
import 'w_acoountlist.dart';
import 'w_bigbutton.dart';
import 'w_toss_app_bar.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 15, 15, 15),
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(
                top: 44, bottom: MainScreenState.bottomnavigationheight),
            child: Column(
              children: [
                Bigbutton('토스뱅크'),
                AccountList(),
              ],
            ),
          ),
          TossAppBar(),
        ],
      ),
    );
  }
}
