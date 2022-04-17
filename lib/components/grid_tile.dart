import 'package:flutter/material.dart';

class CustomGridTile extends StatefulWidget {
  late String image;
  late String title;
  late IconData icon;
  late IconData iconPressed;
  late bool pressed;
  CustomGridTile(
      {required this.icon,
      required this.image,
      required this.title,
      required this.iconPressed,
      required this.pressed,
      Key? key})
      : super(key: key);

  @override
  State<CustomGridTile> createState() => _CustomGridTileState();
}

class _CustomGridTileState extends State<CustomGridTile> {
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
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: width / 2,
                maxHeight: height / 7,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:
                  Radius.circular(
                    20,
                  ),
                  topRight:  Radius.circular(
                    20,
                  ),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    widget.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Image.asset(
              //   widget.image,
              //   width: width,
              // ),
            ),
            Text(
              widget.title,
              style: TextStyle(),
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
    );
  }
}
