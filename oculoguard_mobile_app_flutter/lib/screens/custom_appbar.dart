import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget customScrollAppBar(BuildContext context) => CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("OculoGuard"),
          expandedHeight: 150,
          // flexibleSpace: Placeholder(),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {Scaffold.of(context).openDrawer()},
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => Container(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Text(
                        names[index],
                      ),
                    ),
                  ),
              childCount: names.length),
        )
      ],
    );

List<String> names = ["Thidas", "Sankaja", "Jayawardane", "Don", "Blue", "red"];
