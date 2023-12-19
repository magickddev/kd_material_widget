part of check_goods_widgets;

class GoodsDrawer extends StatelessWidget {
  const GoodsDrawer({
    super.key,
    this.backgroundColor,
    this.headerChild,
    this.accounts,
  });

  final Color? backgroundColor;
  final Widget? headerChild;
  final List<Widget>? accounts;

  @override
  Widget build(BuildContext context) {
    DrawerThemeData drawerTheme = Theme.of(context).drawerTheme;
    return Drawer(
      child: Container(
        color: backgroundColor ?? drawerTheme.backgroundColor,
        child: ListView.builder(
          itemCount: getItemsLength(),
          itemBuilder: _buildItem,
        ),
      ),
    );
  }

  int getItemsLength() {
    if (accounts != null) {
      return accounts!.length + 1;
    } else {
      return 1;
    }
  }

  Widget _buildItem(BuildContext context, int index) {
    if (index == 0) {
      return GoodsDrawerHeader(headerChild: headerChild);
    } else {
      return accounts![index - 1];
    }
  }
}
