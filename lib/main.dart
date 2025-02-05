import 'package:flutter/material.dart';
import 'package:user_front/screens/login_screen.dart';
import 'package:user_front/screens/signup_screen.dart';
import 'package:user_front/screens/product_screen.dart';
import 'package:user_front/screens/product_detail_screen.dart';
import 'package:user_front/screens/cart_screen.dart';
import 'package:user_front/screens/payment_screen.dart';
import 'package:user_front/theme/app_theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: AppTheme.lightTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/product': (context) => ProductScreen(),
        '/product/detail': (context) => ProductDetailScreen(),
        '/cart': (context) => CartScreen(),
        '/payment': (context) => PaymentScreen(),
      },
    );
  }
}
