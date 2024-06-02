import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  const SwitchMenu(this.title, this.isOn, {required this.onTap, super.key});
  final String title;
  final bool isOn;
  final ValueChanged<bool> onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.size(18).bold.make(),
        OsSwitch(
          value: isOn,
          onChanged: onTap,
        ),
      ],
    );
  }
}
