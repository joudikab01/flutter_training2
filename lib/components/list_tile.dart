import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  late String image;
  late String title;
  late String description;
  late IconData icon;
  late IconData iconPressed;
  late bool pressed;
  CustomListTile(
      {required this.description,
      required this.icon,
      required this.image,
      required this.title,
      required this.iconPressed,
      required this.pressed,
      Key? key})
      : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            side: BorderSide(color: Colors.white, width: 3)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                widget.image,
                width: width / 2.7,
              ),
              Column(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.pressed = !widget.pressed;
                  });
                },
                icon: Icon(
                  widget.pressed ? widget.icon : widget.iconPressed,
                  size: width / 12,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
