import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oculoguard_mobile_app_flutter/widgets/social_media_Icon.dart';
import '../widgets/widget.dart';
import '../constants.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisibility = true;
  bool passwordVisibility2 = true;

  Color borderColor_1 = Colors.white;
  Color borderColor_2 = Colors.white;
  Color borderColor_3 = Colors.white;

  final TextEditingController _mail = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _passAgain = TextEditingController();

  @override
  void dispose() {
    _pass.dispose();
    _passAgain.dispose();
    _mail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Register",
                            style: kHeadline,
                          ),
                          const Text(
                            "Create new account to get started.",
                            style: kBodyText2,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          // const MyTextField(
                          //   hintText: 'Name',
                          //   inputType: TextInputType.name,
                          // ),
                          MyTextField(
                            controller: _mail,
                            boderColor: borderColor_1,
                            hintText: 'Email',
                            inputType: TextInputType.emailAddress,
                          ),
                          MyPasswordField(
                            borderColor: borderColor_2,
                            name: "Password",
                            controller: _pass,
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                                setDefault();
                              });
                            },
                          ),
                          MyPasswordField(
                            borderColor: borderColor_3,
                            name: "Re-enter password",
                            controller: _passAgain,
                            isPasswordVisible: passwordVisibility2,
                            onTap: () {
                              setState(() {
                                passwordVisibility2 = !passwordVisibility2;
                                setDefault();
                              });
                            },
                          ),
                          verticalBox(
                            size.height * 0.03,
                          ),
                          MyTextButton(
                            buttonName: 'SignUp',
                            onTap: () {
                              signUp();
                            },
                            bgColor: Colors.white,
                            textColor: Colors.black87,
                          ),
                          verticalBox(
                            size.height * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Or Sign up with",
                                style: kBodyText,
                              )
                            ],
                          ),
                          verticalBox(
                            size.height * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialIcon(
                                icon: FontAwesomeIcons.google,
                                onTap: () {},
                                size: 20,
                              ),
                              // SocialIcon(
                              //   icon: Icons.phone,
                              //   onTap: () {},
                              //   size: 20,
                              // ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: kBodyText,
                        ),
                        Text(
                          "Sign In",
                          style: kBodyText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
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

  SnackBar bar(Widget text) {
    return SnackBar(content: text);
  }

  Future<void> signUp() async {
    final mail = _mail.text.trim();

    if (_pass.text.trim() == _passAgain.text.trim()) {
      try {
        await Amplify.Auth.signUp(
            username: mail,
            password: _pass.text.trim(),
            options: CognitoSignUpOptions(
              userAttributes: {
                CognitoUserAttributeKey.email: mail,
              },
            ));
      } catch (e) {
        print(e);
      }
    } else {
      setState(() {
        borderColor_2 = Colors.red;
        borderColor_3 = Colors.red;
      });
    }
  }

  void setDefault() {
    borderColor_1 = Colors.white;
    borderColor_2 = Colors.white;
    borderColor_3 = Colors.white;
  }
}
