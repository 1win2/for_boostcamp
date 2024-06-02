import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/main/tab/home/vo_banklist.dart';
import 'package:flutter/material.dart';
import 'account_dummy.dart';

class AccountList extends StatelessWidget {
  const AccountList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 23, 23, 23),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          AccountObject(tossbank),
          AccountObject(shinhanbank),
          AccountObject(shinhanbank2),
          AccountObject(shinhanbank3),
          AccountObject(kakaobank),
          AccountObject(kakaobank2),
          AccountObject(investmentbank),
          HLine(),
          Additional(),
        ],
      ),
    );
  }
}

class Additional extends StatelessWidget {
  const Additional({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          '계좌∙대출∙증권∙포인트 보기'.text.color(Colors.grey.shade400).size(18).make(),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey.shade400,
          )
        ],
      ),
    );
  }
}

class AccountObject extends StatelessWidget {
  final BankAccount bankAccount;
  const AccountObject(this.bankAccount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                bankAccount.bankimagepath,
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        bankAccount.tag ?? '이름없음',
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        bankAccount.balance.toComma() + '원',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(10)),
            child: '송금'
                .text
                .size(14)
                .bold
                .color(Colors.grey)
                .make()
                .pSymmetric(v: 9, h: 13),
          ),
        ],
      ),
    );
  }
}

class HLine extends StatelessWidget {
  const HLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      height: 0.5,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
