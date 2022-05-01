import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import './screens/screen.dart';
import 'routes/router.dart';
import 'amplifyconfiguration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureAmplify();
  runApp(MyApp());
}

Future<void> configureAmplify() async {
  Amplify.addPlugins([AmplifyAuthCognito()]);
  try {
    await Amplify.configure(amplifyconfig);
  } catch (e) {
    print(e);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    // debugShowCheckedModeBanner: false,
    // title: 'OculoGuard',
    // theme: ThemeData.dark().copyWith(
    //   scaffoldBackgroundColor: kBackgroundColor,
    //   visualDensity: VisualDensity.adaptivePlatformDensity,
    //   brightness: Brightness.dark,
    // ),
    // initialRoute: "/home",
    // onGenerateRoute: RouteGenerator.generateRoute,
    // );

    return FutureBuilder<AuthUser>(
        future: Amplify.Auth.getCurrentUser(),
        builder: (BuildContext context, AsyncSnapshot<AuthUser> snapshot) {
          if (snapshot.hasError) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'OculoGuard',
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: kBackgroundColor,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                brightness: Brightness.dark,
              ),
              initialRoute: "/",
              onGenerateRoute: RouteGenerator.generateRoute,
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'OculoGuard',
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kBackgroundColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              brightness: Brightness.dark,
            ),
            initialRoute: "/home",
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        });
  }
}
