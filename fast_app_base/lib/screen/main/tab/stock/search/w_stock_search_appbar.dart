import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';

class StockSearchAppbar extends StatelessWidget implements PreferredSizeWidget {
  const StockSearchAppbar({required this.controller, super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            Tap(
                onTap: () => Nav.pop(context),
                child: const Icon(Icons.chevron_left, size: 35)),
            Expanded(
              child: TextFieldWithDelete(
                textInputAction: TextInputAction.search,
                texthint: '\'배당주\'를 검색해보세요',
                controller: controller,
                fontSize: 17,
              ).pOnly(top: 6),
            ),
            const SizedBox(width: 10)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
