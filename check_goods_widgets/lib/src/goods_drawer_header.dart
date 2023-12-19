part of check_goods_widgets;

class GoodsDrawerHeader extends StatelessWidget {
  const GoodsDrawerHeader({
    super.key,
    required this.headerChild, 
    this.iconScale,
  });

  final Widget? headerChild;
  final double? iconScale;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Center(
        child: Column(
          children: [
            CircleAccountIcon(
              scale: iconScale ?? 2.5,
            ),
            if (headerChild != null) headerChild!,
          ],
        ),
      ),
    );
  }
}
