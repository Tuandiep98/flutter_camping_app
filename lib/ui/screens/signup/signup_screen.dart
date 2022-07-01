import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_button.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_text_field.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _phoneController;
  TextEditingController _passwordController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/Logo_Black.png', scale: 1.2),
              const SizedBox(height: 20),
              _buildField('Name', _nameController, '', TextInputType.text),
              const SizedBox(height: 20),
              _buildField('Email', _emailController, 'example@gmail.com',
                  TextInputType.emailAddress),
              const SizedBox(height: 20),
              _buildField('Phone', _emailController, '', TextInputType.number),
              const SizedBox(height: 20),
              _buildField('Password', _passwordController, '',
                  TextInputType.visiblePassword),
              _buildAction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(String title, TextEditingController controller,
      String hint, TextInputType inputType) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              title ?? 'Title',
              style: ThemeUtils.descriptionTextDarkStyle.copyWith(
                color: Colors.grey[400],
              ),
            ),
          ),
          CustomTextField(
            controller: controller,
            hint: hint,
            inputType: inputType,
            obscureText:
                inputType == TextInputType.visiblePassword ? true : false,
            validator: (value) {
              var a = 1;
              return true;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAction() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomButton(
            title: 'Register',
          ),
          const SizedBox(height: 20),
          CustomButton(
            title: 'Login',
            isOutlined: true,
            onTap: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
