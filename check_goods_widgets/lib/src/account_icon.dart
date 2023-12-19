part of check_goods_widgets;

class AccountIcon extends StatelessWidget {
  final Widget child;
  final Widget? topRightChild;
  final Widget? bottomRightChild;
  final Widget? topLeftChild;
  final Widget? bottomLeftChild;
  final bool isTopRightChildVisible;
  final bool isTopLeftChildVisible;
  final bool isBottomRightChildVisible;
  final bool isBottomLeftChildVisible;

  const AccountIcon({
    super.key,
    required this.child,
    this.topRightChild,
    this.bottomRightChild,
    this.topLeftChild,
    this.bottomLeftChild, 
    this.isTopRightChildVisible = false, 
    this.isTopLeftChildVisible = false, 
    this.isBottomRightChildVisible = false, 
    this.isBottomLeftChildVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    Size? screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        child,
        if (topRightChild != null && isTopRightChildVisible)
          Positioned(
            top: 0,
            right: 0,
            child: topRightChild!,
          ),
        if (topLeftChild != null && isTopLeftChildVisible)
          Positioned(
            top: 0,
            left: 0,
            child: topLeftChild!,
          ),
        if (bottomRightChild != null && isBottomRightChildVisible)
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleContainer(
              color: Colors.red,
              width: screenSize.scaleHeight(scale: .015),
            ),
          ),
        if (bottomLeftChild != null && isBottomLeftChildVisible)
          Positioned(
            bottom: 0,
            left: 0,
            child: CircleContainer(
              color: Colors.red,
              width: screenSize.scaleHeight(scale: .015),
            ),
          ),
      ],
    );
  }
}
