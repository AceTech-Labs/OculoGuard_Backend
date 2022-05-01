import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:oculoguard_mobile_app_flutter/widgets/record.dart';
import '../widgets/my_text_button.dart';
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

// void getData() async {
//   try{
//     final request = Model
//   }
//   on Exception catch(e){

//   }
// }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        // ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("OculoGuard"),
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => {_scaffoldKey.currentState!.openDrawer()},
              ),
            )
          ],
        ),
        drawer: SideDrawer(),
      ),
    );
  }
}
