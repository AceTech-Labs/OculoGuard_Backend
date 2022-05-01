import 'package:flutter/material.dart';
import 'package:oculoguard_mobile_app_flutter/screens/custom_appbar.dart';

class RecordData extends StatefulWidget {
  RecordData({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<RecordData> createState() => _RecordDataState();
}

class _RecordDataState extends State<RecordData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 30,
      child: Center(
        child: Text(widget.name),
      ),
    );
  }
}
