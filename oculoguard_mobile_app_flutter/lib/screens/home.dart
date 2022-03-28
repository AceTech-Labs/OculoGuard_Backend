import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'package:oculoguard_mobile_app_flutter/widgets/sidedrawer/sidedrawer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          // appBar: AppBar(
          //   // automaticallyImplyLeading: false,
          //   elevation: 0,
          //   backgroundColor: Colors.transparent,
          //   title: Text("OculoGuard"),
          // ),
          drawer: SideDrawer(),
          body: customScrollAppBar(context),
        ));
  }
}
