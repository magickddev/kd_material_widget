part of check_goods_extension;

extension SizeExtension on Size? {
  double scaleWidth({double scale = 1, double defaultWidth = 0}) {
    if (this?.width == null) return defaultWidth;
    return this!.width * scale;
  }

  double scaleHeight({double scale = 1, double defaultHeight = 0}) {
    if (this?.height == null) return defaultHeight;
    return this!.height * scale;
  }
  SizedBox scaleWidthBox({double scale = 1, double defaultWidth = 0}) =>
      scaleWidth(scale: scale, defaultWidth: defaultWidth).w;
  SizedBox scaleHeightBox({double scale = 1, double defaultHeight = 0}) =>
      scaleHeight(scale: scale, defaultHeight: defaultHeight).h;
}
