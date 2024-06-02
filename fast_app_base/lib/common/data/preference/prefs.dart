import 'package:fast_app_base/common/data/preference/item/nullable_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';
import 'package:get/get_rx/get_rx.dart';

import 'item/rx_preference_item.dart';
import 'item/rxn_preference_item.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final SliderPositon =
      RxPreferenceItem<double, RxDouble>('SliderPosition', 0.0);
  static final dateTimeRx =
      RxnPreferenceItem<DateTime, Rxn<DateTime>>('datetimeRx');
  static final myNumber = RxPreferenceItem<int, RxInt>('myNumber', 0);
}
