import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NumberDialog extends DialogWidget<int> {
  NumberDialog(
      {super.key,
      super.animation = NavAni.Fade,
      super.barrierDismissible = false});

  @override
  State<NumberDialog> createState() => _NumberDialogState();
}

class _NumberDialogState extends State<NumberDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          '숫자를 입력하세요'.text.make(),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 10,
          ),
          Tap(
              onTap: () {
                final text = controller.text;
                int number = int.parse(text);
                widget.hide(number);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                child: '완료'.text.make(),
              ))
        ],
      ),
    );
  }
}
