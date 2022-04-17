import 'package:flutter/material.dart';
import '../components/list_tile.dart';

class CustomListView extends StatelessWidget {
   CustomListView({Key? key}) : super(key: key);
bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView',
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return CustomListTile(
            icon: Icons.star,
            title: 'SmartWatch',
            description: 'The latest watch',
            image: 'assets/watch.jpg',
            iconPressed: Icons.star_border_outlined,
            pressed: pressed,
          );
        },
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: false,
      ),
    );
  }
}
