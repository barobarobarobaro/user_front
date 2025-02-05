
import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('카카오 소셜 로그인'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('네이버 소셜 로그인'),
        ),
      ],
    );
  }
}
