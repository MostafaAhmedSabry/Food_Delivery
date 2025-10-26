import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import '../../extension/color_extension.dart';
import '../../widget/round_button.dart';
import 'new_password_view.dart';

class OTPView extends StatefulWidget {
  final String email;
  const OTPView({super.key, required this.email});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              Text(
                "We have sent an OTP to your email",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 15),
              Text(
                "Please check your email ${widget.email}\ncontinue to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 60),
              SizedBox(
                height: 60,
                child: OtpPinField(
                  key: _otpPinFieldController,
                  autoFillEnable: true,
                  textInputAction: TextInputAction.done,
                  onSubmit: (newCode) => code = newCode,
                  onChange: (newCode) => code = newCode,
                  onCodeChanged: (newCode) => code = newCode,
                  fieldWidth: 40,
                  otpPinFieldStyle: OtpPinFieldStyle(
                    defaultFieldBorderColor: Colors.transparent,
                    activeFieldBorderColor: Colors.transparent,
                    defaultFieldBackgroundColor: TColor.textfield,
                    activeFieldBackgroundColor: TColor.textfield,
                  ),
                  maxLength: 6,
                  showCursor: true,
                  cursorColor: TColor.placeholder,
                  upperChild: const Column(
                    children: [
                      SizedBox(height: 30),
                      Icon(Icons.flutter_dash_outlined, size: 150),
                      SizedBox(height: 20),
                    ],
                  ),
                  showCustomKeyboard: false,
                  cursorWidth: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  otpPinFieldDecoration:
                  OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),
              const SizedBox(height: 30),
              RoundButton(
                title: "Next",
                onPressed: () {
                  if (code.length == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewPasswordView(
                          nObj: {
                            'email': widget.email,
                            'otp': code,
                          },
                        ),
                      ),
                    );
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  // Resend OTP logic
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't Receive? ",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Click Here",
                      style: TextStyle(
                          color: TColor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}