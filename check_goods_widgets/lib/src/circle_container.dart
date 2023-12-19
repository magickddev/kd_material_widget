part of check_goods_widgets;

class CircleContainer extends StatelessWidget {
  final double? width;
  final Color? color;
  final Widget? child;
  const CircleContainer({super.key, this.width, this.color, this.child});

  @override
  Widget build(BuildContext context) {
        Size? screenSize = MediaQuery.of(context).size;
    return Container(
      height: width ?? screenSize.scaleHeight(scale: .05),
      width: width ?? screenSize.scaleHeight(scale: .05),
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        shape: BoxShape.circle
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
