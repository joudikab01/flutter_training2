import 'package:flutter/material.dart';
import '../components/grid_tile.dart';


class CustomGridView extends StatelessWidget {
  CustomGridView({Key? key}) : super(key: key);
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridView',
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return CustomGridTile(
            icon: Icons.star,
            title: 'SmartWatch',
            image: 'assets/watch.jpg',
            iconPressed: Icons.star_border_outlined,
            pressed: pressed,
          );
        },
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: false,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
