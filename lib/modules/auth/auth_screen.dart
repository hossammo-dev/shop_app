import 'package:flutter/material.dart';
import 'package:shop_app/shared/styles/colors.dart';
import 'package:shop_app/shared/styles/styles.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/cover_white.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            fillColor: Color(0xfff3f3f4),
                            filled: true,
                            labelText: 'Email'),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            fillColor: Color(0xfff3f3f4),
                            filled: true,
                            labelText: 'Password'),
                      ),
                      
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildAuthButton(
                          buttonText: 'LOGIN',
                          isOutlined: true,
                        ),
                        SizedBox(width: 12),
                        _buildAuthButton(
                          buttonText: 'REGISTER',
                          buttonColor: PRIMARY_COLOR,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton _buildAuthButton({
    @required String buttonText,
    TextStyle buttonTextStyle,
    Color buttonColor,
    double buttonWidth,
    Function buttonFunction,
    bool isOutlined = false,
  }) {
    return MaterialButton(
      onPressed: buttonFunction ?? () {},
      minWidth: buttonWidth,
      color: buttonColor,
      elevation: 5.6,
      shape: (isOutlined)
          ? OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: PRIMARY_COLOR,
              ),
            )
          : RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      child: Text(
        buttonText,
        style: buttonTextStyle ??
            DEFAULT_TEXT_STYLE.copyWith(
              color: (isOutlined) ? BLACK : WHITE,
              fontSize: 18,
            ),
      ),
    );
  }
}
