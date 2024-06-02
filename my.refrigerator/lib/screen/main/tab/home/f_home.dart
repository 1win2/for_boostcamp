import 'package:fast_app_base/screen/main/tab/home/w_background.dart';
import 'package:flutter/material.dart';

import 'vo_recipe.dart';
import 'vo_vegetable_list.dart';
import 'w_item_list_viewer.dart';
import 'w_to_buy.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          //오늘의 레시피
          ListBackground(
              height: 209,
              child: ItemListViewer('오늘의 레시피', recipeList, isJustList: false)),

          //곧 상하는 재료
          ListBackground(
              height: 169,
              child:
                  ItemListViewer('곧 상하는 재료', vegeItemList, isJustList: true)),

          //사야 할 것
          ListBackground(height: 200, child: ToBuy()),
        ],
      ),
    );
  }
}
