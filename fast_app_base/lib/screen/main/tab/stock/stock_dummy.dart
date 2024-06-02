import 'package:fast_app_base/screen/main/tab/stock/vo_stock.dart';

class stockObject {
  final Stock stock;
  final double percent;
  final int price;

  stockObject(
      {required this.stock, required this.percent, required this.price});
}

final stockList = <stockObject>[
  stockObject(stock: hanhwa, percent: 0.0, price: 41600),
  stockObject(stock: mobis, percent: 2.5, price: 219000),
  stockObject(stock: celltrion, percent: 0.1, price: 251200),
  stockObject(stock: hybe, percent: -0.1, price: 173500),
];
