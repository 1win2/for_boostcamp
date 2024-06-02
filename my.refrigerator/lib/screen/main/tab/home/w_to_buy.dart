import 'package:fast_app_base/screen/main/tab/home/vo_to_buy_list.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../common/widget/w_tap.dart';

class ToBuy extends StatefulWidget {
  ToBuy({super.key});

  @override
  State<ToBuy> createState() => _ToBuyState();
}

class _ToBuyState extends State<ToBuy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '사야 할 것'.text.size(20).make(),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return index < toBuyList.length
                ? GestureDetector(
                    onLongPress: () {
                      setState(() {
                        toBuyList.removeAt(index);
                      });
                    },
                    child: Text(
                      '✔' + toBuyList[index],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ).pSymmetric(h: 10),
                  )
                : Container(
                    alignment: Alignment.center,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8)),
                    child: Tap(
                        onTap: () {
                          setState(() {
                            if (toBuyList.length <= 7) {
                              toBuyList.add('감자');
                            } else {
                              showDialog(
                                context: context,
                                barrierDismissible: true, //바깥 영역 터치시 닫을지 여부 결정
                                builder: ((context) {
                                  return AlertDialog(
                                    insetPadding:
                                        EdgeInsets.symmetric(vertical: 130),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.white,
                                    surfaceTintColor: Colors.white,
                                    content: Text(
                                      '\n최대 8개까지 추가할 수 있습니다.',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    actions: <Widget>[
                                      Container(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(); //창 닫기
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            surfaceTintColor: Colors.white,
                                            shadowColor: Colors.transparent,
                                          ),
                                          child: Text(
                                            "닫기",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            }
                          });
                        },
                        child: Text('눌러서 추가하기')),
                  ).pSymmetric(h: 10);
          },
          itemCount: toBuyList.length + 1,
        ),
      ],
    ).pSymmetric(h: 30);
  }
}

class ToBuyField extends StatelessWidget {
  final textcontroller = TextEditingController();
  ToBuyField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textcontroller,
    );
  }
}
