import 'package:flutter/material.dart';
import 'package:lms/shared/theme.dart';
import 'package:lms/ui/widgets/custom_button.dart';
import 'package:lms/ui/widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 245,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_login_top.png',
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget inputSection() {
      Widget imageHeader() {
        return Container(
          width: double.infinity,
          height: 246,
          margin: EdgeInsets.only(top: 85, bottom: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/image_login.png',
              ),
            ),
          ),
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Adress',
          hintText: 'Enter email address',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Enter password',
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Login',
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
        );
      }

      Widget forgotPassword() {
        return Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            'Forgot your password?',
            style: greyTextStyle.copyWith(fontWeight: bold),
          ),
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                imageHeader(),
                emailInput(),
                passwordInput(),
                submitButton(),
                forgotPassword(),
              ],
            ),
          ),
        ],
      );
    }

    Widget footer() {
      return Container(
        width: double.infinity,
        height: 170,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_login_bottom.png',
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                header(),
                Spacer(),
                // footer(),
              ],
            ),
          ),
          ListView(
            children: [
              inputSection(),
            ],
          ),
        ],
      ),
    );
  }
}
