import 'package:fast_app_base/common/common.dart';

class Stock {
  final String imagepath;
  final String dummyStockName;

  Stock({required this.imagepath, required this.dummyStockName});
}

Stock hanhwa = Stock(
    imagepath: '$basePath/stock/interest_stock_01.png',
    dummyStockName: '한화솔루션');
Stock mobis = Stock(
    imagepath: '$basePath/stock/interest_stock_02.png',
    dummyStockName: '현대모비스');
Stock celltrion = Stock(
    imagepath: '$basePath/stock/interest_stock_03.png', dummyStockName: '셀트리온');
Stock hybe = Stock(
    imagepath: '$basePath/stock/interest_stock_04.png', dummyStockName: '하이브');
