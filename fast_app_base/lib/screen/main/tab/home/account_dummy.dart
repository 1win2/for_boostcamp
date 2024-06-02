import 'package:fast_app_base/screen/main/tab/home/bank_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo_banklist.dart';

BankAccount tossbank = BankAccount(
    banktoss.bankname, banktoss.bankimagepath, 2000000,
    tag: '토스뱅크 통장');
BankAccount shinhanbank = BankAccount(
    bankshinhan.bankname, bankshinhan.bankimagepath, 45000000,
    tag: '신한저축예금');
BankAccount shinhanbank2 = BankAccount(
    bankshinhan.bankname, bankshinhan.bankimagepath, 5000000,
    tag: '신한저축예금');
BankAccount shinhanbank3 = BankAccount(
    bankshinhan.bankname, bankshinhan.bankimagepath, 15000000,
    tag: '신한저축예금');
BankAccount kakaobank = BankAccount(
    bankkakao.bankname, bankkakao.bankimagepath, 200000,
    tag: '입출금통장');
BankAccount investmentbank = BankAccount(
    bankinvestment.bankname, bankinvestment.bankimagepath, 0,
    tag: '투자 모아보기');

BankAccount kakaobank2 = BankAccount(
    bankkakao.bankname, bankkakao.bankimagepath, 392000,
    tag: '모임 통장');
