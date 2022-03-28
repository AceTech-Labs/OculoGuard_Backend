import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oculoguard_mobile_app_flutter/widgets/social_media_Icon.dart';
import '../constants.dart';
import '../screens/screen.dart';
import '../widgets/widget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPasswordVisible = true;
  Color borderColor_1 = Colors.white;
  Color borderColor_2 = Colors.white;

  final TextEditingController _mail = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
        //to make page scrollable
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Welcome back.",
                            style: kHeadline,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "You've been missed!",
                            style: kBodyText2,
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          MyTextField(
                            boderColor: borderColor_1,
                            controller: _mail,
                            hintText: 'Phone, email or username',
                            inputType: TextInputType.text,
                          ),
                          MyPasswordField(
                            borderColor: borderColor_2,
                            name: "Password",
                            controller: _pass,
                            isPasswordVisible: isPasswordVisible,
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                                setDefault();
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, "/resetPassword");
                                  },
                                  child: const Text(
                                    "Forgot your password ?",
                                    style: kBodyText,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MyTextButton(
                            buttonName: 'Sign In',
                            onTap: () async {
                              // signIn();
                            },
                            bgColor: Colors.white,
                            textColor: Colors.black87,
                          ),
                          verticalBox(size.height * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Or continue with",
                                style: kBodyText,
                              ),
                            ],
                          ),
                          verticalBox(size.height * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialIcon(
                                icon: FontAwesomeIcons.google,
                                onTap: () async {
                                  // try {
                                  //   UserCredential user =
                                  //       await signInWithGoogle();
                                  //   if (user != null) {
                                  //     Navigator.pushNamed(context, "/home");
                                  //   }
                                  // } catch (e) {
                                  //   print(e);
                                  // }
                                },
                                size: 20,
                              ),
                              // SocialIcon(
                              //   icon: FontAwesomeIcons.facebook,
                              //   onTap: () {},
                              //   size: 20,
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont't have an account? ",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Register',
                            style: kBodyText.copyWith(
                              color: Colors.white,
                            ),
                          ),
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

  SnackBar mySnackBar(Widget text) {
    return SnackBar(content: text);
  }

  // Future<void> signIn() async {
  //   final pass = _pass.text.trim();
  //   final mail = _mail.text.trim();
  //   try {
  //     await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: mail, password: pass)
  //         .then((value) {
  //       Navigator.pushNamed(context, "/home");
  //     });
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //     if (e.code == "user-not-found") {
  //       setState(() {
  //         borderColor_1 = Colors.red;
  //       });
  //     } else if (e.code == "wrong-password") {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //           mySnackBar(const Text("user not found or wrong password")));
  //       setState(() {
  //         borderColor_2 = Colors.red;
  //         if (_mail.text.isEmpty) {
  //           borderColor_1 = Colors.red;
  //         }
  //       });
  //     } else if (e.code == "invalid-email") {
  //       setState(() {
  //         borderColor_1 = Colors.red;
  //       });
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  void setDefault() {
    borderColor_1 = Colors.white;
    borderColor_2 = Colors.white;
  }
}
