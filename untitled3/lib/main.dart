import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Shopping Cart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // list of items in the shopping cart
  Map<String, int> _shoppingCart = {};

  // list of all available items
  final Map<String, double> _items = {
    'Apple': 0.99,
    'Banana': 0.59,
    'Orange': 0.79,
    'Grapes': 1.99,
    'Pineapple': 1.49,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          String itemName = _items.keys.toList()[index];
          return ListTile(
            title: Text(itemName),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                setState(() {
                  _shoppingCart.update(
                    itemName,
                        (value) => value + 1,
                    ifAbsent: () => 1,
                  );
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CartPage(cart: _shoppingCart),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final Map<String, int> cart;

  CartPage({Key key, this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Shopping Cart'),
    ),
    body: ListView.builder(
    itemCount: cart.length,
    itemBuilder: (context, index) {
    String itemName = cart.keys.toList()[index];
    int itemCount = cart.values.toList()[index];
    double item
