import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bigbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/data/preference/prefs.dart';
import '../../d_number_dialog.dart';
import 'w_switch_menu.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isPushOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          Obx(
            () =>
                SwitchMenu('푸쉬 설정', Prefs.isPushOnRx.get(), onTap: (bool isOn) {
              setState(() => Prefs.isPushOnRx.set(isOn));
            }),
          ),
          Obx(() => Slider(
              value: Prefs.SliderPositon.get(),
              onChanged: (value) {
                Prefs.SliderPositon.set(value);
              })),

          //date time
          Mybutton(
            '날짜 ${Prefs.dateTimeRx.get()!.formattedDate}',
            onTap: () async {
              final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(90.days),
                  lastDate: DateTime.now().add(90.days));
              if (date != null) {
                Prefs.dateTimeRx.set(date);
              }
            },
          ),

          //dialog
          Obx(() =>
              Mybutton('지정된 숫자 : ${Prefs.myNumber.get()}', onTap: () async {
                final number = await NumberDialog().show();
                if (number != null) {
                  Prefs.myNumber.set(number);
                }
              }))
        ],
      ).p(20),
    );
  }
}
