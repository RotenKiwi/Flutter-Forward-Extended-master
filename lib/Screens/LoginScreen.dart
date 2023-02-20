import 'package:flutter/material.dart';
import 'package:flutter_forward_extended/Components/RoundedButton.dart';
import '../Components/formField.dart';
import '../Constants.dart' as constants;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: constants.nightPrimary,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: const AssetImage('assets/images/Weather.png'),
              width: size.width,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  width: size.width * 0.75,
                  child: formField(
                    size: size,
                    text: 'Username',
                    password: false,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.75,
                  child: formField(
                    size: size,
                    text: 'Password',
                    password: true,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SizedBox(
                  height: size.height * 0.07,
                  child: RoundedButton(
                    text: 'Login',
                    press: () {},
                    color: constants.dayPrimary,
                    textColor: constants.nightPrimary,
                    length: size * 0.55,
                    fontsize: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: constants.dayPrimaryFade,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
