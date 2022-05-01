import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:oculoguard_mobile_app_flutter/constants.dart';

class SideDrawer extends StatelessWidget {
  SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: Builder(builder: (context) {
        Size size = MediaQuery.of(context).size;
        return ListView(
          children: [
            ListTile(
              title: Text("name"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => {},
            ),
            ListTile(
              title: const Text("SignOut"),
              leading: const Icon(Icons.logout),
              onLongPress: () => {
                Amplify.Auth.signOut().then((value) => {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/", (route) => false)
                    })
              },
            )
          ],
        );
      }),
    );
  }
}
