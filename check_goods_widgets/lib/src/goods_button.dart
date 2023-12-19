part of check_goods_widgets;

class GoodsButton extends StatefulWidget {
  const GoodsButton({super.key});

  @override
  State<GoodsButton> createState() => _GoodsButtonState();
}

class _GoodsButtonState extends State<GoodsButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(""),
      onPressed: () {},
    );
  }
}
