# check_goods_widgets

this is a package with some useful widget to to save time 

## Example

```dart
Scaffold(
      appBar: GoodsAppBar(
        AppStrings.appName,
        rightTitle: CircleAccountIcon(),
      ),
      body: Center(
        child: GoodsButton(),
      ),
      bottomNavigationBar: GoodsBottomBar(
        currentIndex: currentIndex,
        onTap: navigate,
      ),
      drawer: GoodsDrawer(
        headerChild: Text("Title"),
        accounts: [           
        ListTile(
        leading: CircleAccountIcon(),
        title: Text("prova"),
      ),
        ]
      ),
    );
```
