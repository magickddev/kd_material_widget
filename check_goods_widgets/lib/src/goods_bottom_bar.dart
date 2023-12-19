part of check_goods_widgets;

class GoodsBottomBar extends StatelessWidget {
  final int currentIndex;
  final BoxDecoration? backgroundDecoration;
  final Color? backgroundColor;
  final Color? selectedIconColor;
  final Color? unselectedIconColor;
  final List<BoxShadow>? boxShadows;
  final List<BottomNavigationBarIcon>? icons;
  final ValueChanged<int>? onTap;
  GoodsBottomBar({
    super.key,
    this.currentIndex = 0,
    this.backgroundDecoration,
    this.backgroundColor,
    this.boxShadows,
    this.icons,
    this.onTap, this.selectedIconColor, this.unselectedIconColor,
  });

  final List<BottomNavigationBarIcon> _defaultItem = [
    BottomNavigationBarIcon(icon: const Icon(Icons.home), label: "HOME"),
    BottomNavigationBarIcon(icon: const Icon(Icons.person), label: "PERSON"),
    BottomNavigationBarIcon(icon: const Icon(Icons.edit), label: "EDIT"),
    BottomNavigationBarIcon(
        icon: const Icon(Icons.settings), label: "SETTINGS"),
  ];

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarThemeData bottomNavigationBarTheme = Theme.of(context).bottomNavigationBarTheme;
    return BottomNavigationBar(
      elevation: bottomNavigationBarTheme.elevation,
      unselectedIconTheme: getUnselectedTheme(bottomNavigationBarTheme),
      selectedIconTheme: getSelectedTheme(bottomNavigationBarTheme),
      selectedItemColor: selectedIconColor ?? bottomNavigationBarTheme.selectedItemColor,
      backgroundColor: unselectedIconColor ?? bottomNavigationBarTheme.backgroundColor,
      currentIndex: currentIndex,
      onTap: onTap,
      items: List.generate(
        icons?.length ?? _defaultItem.length,
        (index) {
          if (icons == null) {
            return BottomNavigationBarItem(
                icon: _defaultItem[index].icon,
                label: _defaultItem[index].label,
                backgroundColor: backgroundColor ?? bottomNavigationBarTheme.backgroundColor,
                );
          }
          return BottomNavigationBarItem(
            icon: icons![index].icon,
            label: icons![index].label,
          );
        },
      ),
    );
  }

  IconThemeData? getSelectedTheme(BottomNavigationBarThemeData theme) {
    if (selectedIconColor != null) {
      return IconThemeData(color: selectedIconColor);
    } else {
      return theme.selectedIconTheme;
    }
  }
  IconThemeData? getUnselectedTheme(BottomNavigationBarThemeData theme) {
    if (unselectedIconColor != null) {
      return IconThemeData(color: unselectedIconColor);
    } else {
      return theme.unselectedIconTheme;
    }
  }
}

class BottomNavigationBarIcon {
  final Widget icon;
  final String label;
  BottomNavigationBarIcon({required this.icon, required this.label});
}
