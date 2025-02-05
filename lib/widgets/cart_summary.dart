
import 'package:flutter/material.dart';

class CartSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('총 금액'),
              Text(
                '￦20,000',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          
ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(
      context, 
      '/payment',
      arguments: {
        'type': 'cart',
        'items': ['1', '2'], // 장바구니 상품 ID 목록
      },
    );
  },
  child: Text('결제하기'),
),
        ],
      ),
    );
  }
}