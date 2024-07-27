import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 20, bottom: 15),
              collapseMode: CollapseMode.parallax,
              title: Text("白云泉"),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 50,
                ),
              ]
            ),
          )
          // 测试SliverAppbar是否能被滚动调整
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return ListTile(
          //         title: Text('Item #$index'),
          //       );
          //     },
          //     childCount: 50, // 你可以根据需要调整列表项的数量
          //   ),
          // ),
        ],
      ),
    );
  }
}