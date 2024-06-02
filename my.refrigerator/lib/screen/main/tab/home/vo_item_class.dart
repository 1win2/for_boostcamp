class Vegetables {
  final String name;
  final String imagepath;
  final DateTime? expirationDate;
  final int? number;
  final DateTime? leftDate;

  bool? rottenNoti = false;

  Vegetables(
      {required this.name,
      this.leftDate,
      required this.imagepath,
      this.rottenNoti,
      this.expirationDate,
      this.number});
}
