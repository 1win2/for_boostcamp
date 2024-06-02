import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:flutter/material.dart';

import 'benefit/f_benefit.dart';
import 'stock/f_stock.dart';
import 'tosspay/f_tosspay.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),
  benefit(Icons.diamond, '혜택', BenefitFragment()),
  tosspay(Icons.shopping_bag, '토스페이', TosspayFragment()),
  stock(Icons.candlestick_chart, '주식', StockFragment()),
  menu(Icons.menu, '전체', HomeFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage,
      {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context,
      {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color: isActivated
              ? context.appColors.iconButton
              : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
