
import 'package:flutter/material.dart';
import 'package:user_front/widgets/terms_agreement.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: '이름'),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '휴대폰 번호',
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: Text('인증하기'),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: '주소'),
            ),
            SizedBox(height: 24),
            TermsAgreement(),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // 회원가입 완료 후 로그인 화면으로 이동
                Navigator.pushNamedAndRemoveUntil(
                  context, 
                  '/login',
                  (route) => false,
                );
              },
              child: Text('가입하기'),
            ),
          ],
        ),
      ),
    );
  }
}