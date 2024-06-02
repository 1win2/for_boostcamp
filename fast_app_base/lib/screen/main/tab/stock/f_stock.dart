import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bigbutton.dart';
import 'package:flutter/material.dart';
import 'search/f_stock_search_screen.dart';
import 'search/setting/s_setting_screen.dart';
import 'w_mystock.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.myBackground,
            automaticallyImplyLeading: false,
            pinned: true,
            actions: [
              Tap(
                onTap: () {
                  Nav.push(const StockSearchScreen());
                },
                child: const Icon(Icons.search, size: 30),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Icon(Icons.menu, size: 30),
              ),
              Tap(
                onTap: () {
                  Nav.push(SettingScreen());
                },
                child: const Icon(Icons.settings, size: 30),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SliverToBoxAdapter(
            child: MainTitle(),
          ),
          const SliverPersistentHeader(pinned: true, delegate: TabDelegate()),
          const SliverFillRemaining(
            child: TabBarView(
              children: [
                Column(children: [
                  Mystock(),
                  Smallbutton('주문내역'),
                  Smallbutton('판매수익'),
                  Smallbutton('예상 배당금'),
                ]),
                TodayDiscovery(),
                Mystock(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TabDelegate extends SliverPersistentHeaderDelegate {
  const TabDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Align(
      child: Container(
        color: AppColors.myBackground,
        child: TabBar(
          automaticIndicatorColorAdjustment: true,
          indicatorPadding: EdgeInsets.zero,
          indicatorWeight: 0.5,
          labelPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
          indicatorColor: Colors.white,
          tabs: [
            '내 주식'.text.white.size(17).bold.make(),
            '오늘의 발견'.text.white.size(17).bold.make(),
            '뉴스'.text.white.size(17).bold.make(),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 55;

  @override
  double get minExtent => 55;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.myBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(width: 20),
          '토스증권'.text.white.bold.size(25).make(),
          const SizedBox(width: 10),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: Row(
              children: [
                'S&P 500'
                    .text
                    .color(Colors.grey)
                    .fontWeight(FontWeight.w600)
                    .make(),
                const SizedBox(width: 6),
                '4,740.56'
                    .text
                    .color(Colors.red)
                    .fontWeight(FontWeight.w600)
                    .make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TodayDiscovery extends StatelessWidget {
  const TodayDiscovery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
