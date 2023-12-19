part of check_goods_extension;

extension DoubleExtension on double? {
  double validate({double value = 0}) {
    return this ?? value;
  }

  SizedBox get h => SizedBox(
        height: this?.toDouble(),
      );

  SizedBox get w => SizedBox(
        width: this?.toDouble(),
      );
}
