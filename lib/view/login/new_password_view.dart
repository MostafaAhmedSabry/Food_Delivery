import 'package:flutter/material.dart';
import '../../extension/color_extension.dart';
import '../../widget/round_button.dart';
import '../../widget/round_textfield.dart';
import '../login/login_view.dart';

class NewPasswordView extends StatefulWidget {
  final Map nObj;
  const NewPasswordView({super.key, required this.nObj});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                "New Password",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 15),
              Text(
                "Please enter your new password",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 60),
              RoundTextfield(
                hintText: "New Password",
                controller: txtPassword,
                obscureText: true,
              ),
              const SizedBox(height: 25),
              RoundTextfield(
                hintText: "Confirm Password",
                controller: txtConfirmPassword,
                obscureText: true,
              ),
              const SizedBox(height: 30),
              RoundButton(
                title: "Next",
                onPressed: () {
                  String email = widget.nObj['email'];
                  String otp = widget.nObj['otp'];
                  String password = txtPassword.text;
                  String confirmPassword = txtConfirmPassword.text;

                  if (password == confirmPassword && password.isNotEmpty) {
                    // هنا ممكن تضيف كود API لتغيير الباسورد
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Password changed successfully."),
                      ),
                    );

                    // بعد النجاح → العودة إلى صفحة تسجيل الدخول
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                          (route) => false,
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Passwords do not match."),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}