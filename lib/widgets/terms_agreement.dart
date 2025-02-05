
import 'package:flutter/material.dart';

class TermsAgreement extends StatefulWidget {
  @override
  _TermsAgreementState createState() => _TermsAgreementState();
}

class _TermsAgreementState extends State<TermsAgreement> {
  bool isAgreedToTerms = false;
  bool isAgreedToPrivacy = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '약관 동의',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          CheckboxListTile(
            value: isAgreedToTerms,
            onChanged: (value) => setState(() => isAgreedToTerms = value!),
            title: Text('이용약관 동의'),
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            value: isAgreedToPrivacy,
            onChanged: (value) => setState(() => isAgreedToPrivacy = value!),
            title: Text('개인정보 처리방침 동의'),
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ],
      ),
    );
  }
}