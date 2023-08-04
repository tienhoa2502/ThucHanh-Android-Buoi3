// ignore_for_file: library_private_types_in_public_api

import 'package:chat/constants.dart';
import 'package:flutter/material.dart';
import 'components/logo_with_title.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogoWithTitle(
        title: 'Verification',
        subText: "Verification code has been sent to your mail",
        children: [
          const SizedBox(height: defaultPadding),
          Form(
            child: TextFormField(
              onSaved: (otpCode) {},
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.send,
              decoration: const InputDecoration(hintText: "Enter OTP"),
            ),
          ),
          const SizedBox(height: defaultPadding),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Validate"),
          ),
        ],
      ),
    );
  }
}
