import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget customScrollAppBar(BuildContext context) => CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("OculoGuard"),
          expandedHeight: 150,
          flexibleSpace: Placeholder(),
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

class SliverMe extends SingleChildRenderObjectWidget {
  const SliverMe({required Key key, required Widget child})
      : super(child: child, key: key);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderSliverMe();
  }
}

class RenderSliverMe extends RenderSliverToBoxAdapter {
  RenderSliverMe({
    RenderBox? child,
  }) : super(child: child);

  @override
  void perfomLayout() {
    if (child == null) {
      geometry = SliverGeometry.zero;
      return;
    }
  }
}

List<String> names = ["Thidas", "Sankaja", "Jayawardane", "Don", "Blue", "red"];
