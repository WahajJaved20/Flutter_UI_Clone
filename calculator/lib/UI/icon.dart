import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final String type;
  final IconData content;
  final Color color;
  final double font = 28;
  final bool darkMode;
  ButtonIcon(this.type, this.content, this.color, this.darkMode);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: darkMode ? Color.fromRGBO(36, 52, 65, 1) : Colors.white,
          boxShadow: [
            BoxShadow(
              color: darkMode ? Colors.black : Color.fromRGBO(233, 233, 233, 1),
              spreadRadius: 0.0,
              offset: Offset(0.0, 4.0),
            )
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.19,
        height: MediaQuery.of(context).size.height * 0.09,
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: IconButton(
              onPressed: null,
              icon: Icon(
                content,
                size: 28,
                color: color,
              )),
        ),
      ),
      Transform.translate(
        offset: Offset(4, 1),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.17,
          color: darkMode ? Color.fromRGBO(89, 105, 118, 1) : Colors.grey[200],
          height: 2,
        ),
      )
    ]);
  }
}
