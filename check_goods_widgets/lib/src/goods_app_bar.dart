part of check_goods_widgets;

class GoodsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String data;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Widget? rightTitle;
  final Widget? mainTitle;
  final Widget? leftTitle;
  final Widget? child;
  final BoxDecoration? backgroundDecoration;
  final List<BoxShadow>? boxShadows;
  final VoidCallback? onRightTab;
  final VoidCallback? onLeftTab;
  final VoidCallback? onCenterTab;
  const GoodsAppBar(
    this.data, {
    super.key,
    this.backgroundColor,
    this.textStyle,
    this.child,
    this.rightTitle,
    this.leftTitle,
    this.backgroundDecoration,
    this.boxShadows,
    this.mainTitle,
    this.onRightTab,
    this.onLeftTab,
    this.onCenterTab,
  });

  @override
  Widget build(BuildContext context) {
    AppBarTheme appBarTheme = Theme.of(context).appBarTheme;
    Size? screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: backgroundDecoration ??
          BoxDecoration(
              color: backgroundColor ?? appBarTheme.backgroundColor,
              boxShadow: boxShadows ??
                  [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15,
                      spreadRadius: 1.0,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15,
                      spreadRadius: 1.0,
                    ),
                  ]),
      child: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              10.0.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  screenSize.scaleWidthBox(scale: 0.02),
                  if (leftTitle != null)
                    GestureDetector(
                      onTap: onLeftTab,
                      child: leftTitle!,
                    ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: onCenterTab,
                        child: mainTitle ??
                            Text(
                              data,
                              style: textStyle ?? appBarTheme.titleTextStyle,
                            ),
                      ),
                    ),
                  ),
                  if (rightTitle != null)
                    GestureDetector(onTap: onRightTab, child: rightTitle!),
                  screenSize.scaleWidthBox(scale: 0.02),
                ],
              ),
              if (child != null) child!
            ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
