part of check_goods_widgets;

class CircleAccountIcon extends StatelessWidget {
  final bool isTopRightChildVisible;
  final bool isTopLeftChildVisible;
  final bool isBottomRightChildVisible;
  final bool isBottomLeftChildVisible;
  final Widget? topRightChild;
  final Widget? topLeftChild;
  final Widget? bottomRightChild;
  final Widget? bottomLeftChild;
  final Widget? child;
  final double scale;
  final Color? itemColor;
  final Color? subitemColorTopRight;
  final Color? subitemColorTopLeft;
  final Color? subitemColorBottomRight;
  final Color? subitemColorBottomLeft;
  const CircleAccountIcon({
    super.key,
    this.isTopRightChildVisible = false,
    this.isTopLeftChildVisible = false,
    this.isBottomRightChildVisible = false,
    this.isBottomLeftChildVisible = false,
    this.scale = 1,
    this.topRightChild,
    this.topLeftChild,
    this.bottomRightChild,
    this.bottomLeftChild,
    this.child,
    this.itemColor,
    this.subitemColorTopRight,
    this.subitemColorTopLeft,
    this.subitemColorBottomRight,
    this.subitemColorBottomLeft,
  });

  @override
  Widget build(BuildContext context) {
    Size? screenSize = MediaQuery.of(context).size;
    return AccountIcon(
      topLeftChild: CircleContainer(
        color: subitemColorTopLeft,
        width: screenSize.scaleHeight(scale: .015 * scale),
        child: topLeftChild,
      ),
      topRightChild: CircleContainer(
        color: subitemColorTopRight,
        width: screenSize.scaleHeight(scale: .015 * scale),
        child: topRightChild,
      ),
      bottomLeftChild: CircleContainer(
        color: subitemColorBottomLeft,
        width: screenSize.scaleHeight(scale: .015 * scale),
        child: bottomLeftChild,
      ),
      bottomRightChild: CircleContainer(
        color: subitemColorBottomRight,
        width: screenSize.scaleHeight(scale: .015 * scale),
        child: bottomRightChild,
      ),
      isBottomLeftChildVisible: isBottomLeftChildVisible,
      isBottomRightChildVisible: isBottomRightChildVisible,
      isTopLeftChildVisible: isTopLeftChildVisible,
      isTopRightChildVisible: isTopRightChildVisible,
      child: CircleContainer(
        color: itemColor,
        width: screenSize.scaleWidth(scale: .1 * scale),
        child: child,
      ),
    );
  }
}
