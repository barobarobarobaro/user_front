
import 'package:flutter/material.dart';
import 'package:user_front/widgets/cart_item.dart';
import 'package:user_front/widgets/cart_summary.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('장바구니'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => CartItem(),
            ),
          ),
          CartSummary(),
        ],
      ),
    );
  }
}