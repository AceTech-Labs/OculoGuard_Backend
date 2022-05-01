import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
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

  final TextEditingController _userName = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // checkUser();
  }

  Future<bool> checkUser() async {
    var user = await Amplify.Auth.getCurrentUser();
    print(user.userId);
    if (user == null) {
      return false;
    } else {
      return true;
    }
  }

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
                            controller: _userName,
                            hintText: 'UserName',
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
                              signIn();
                            },
                            bgColor: Colors.white,
                            textColor: Colors.black87,
                          ),
                          MyTextButton(
                            buttonName: 'Sign Out',
                            onTap: () async {
                              await Amplify.Auth.signOut();
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
                                  try {
                                    await Amplify.Auth.signInWithWebUI(
                                        provider: AuthProvider.google);
                                  } on AuthException catch (e) {
                                    print(e);
                                  }
                                },
                                size: 20,
                              ),
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

  void showSnackaBar(SnackBar bar) {
    Scaffold.of(context).showSnackBar(bar);
  }

  Future<void> signIn() async {
    final pass = _pass.text.trim();
    final user = _userName.text.trim();
    try {
      await Amplify.Auth.signIn(username: user, password: pass);
      Navigator.of(context).pushNamed("/home");
    } on AuthException catch (e) {
      print(e.message);
      if (e.message == "User does not exist.") {
        setState(() {
          borderColor_1 = Colors.red;
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(e.recoverySuggestion!)));
        });
      } else if (e.message == "Username is required to signIn") {
        ScaffoldMessenger.of(context).showSnackBar(
            mySnackBar(const Text("user not found or wrong password")));
        setState(() {
          borderColor_2 = Colors.red;
          if (_userName.text.isEmpty) {
            borderColor_1 = Colors.red;
          }
        });
      } else if (e.message == "invalid-email") {
        setState(() {
          borderColor_1 = Colors.red;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  void setDefault() {
    borderColor_1 = Colors.white;
    borderColor_2 = Colors.white;
  }
}
