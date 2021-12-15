import 'package:flutter/material.dart';
class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    this.text,
    this.press,
    this.color = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  final String? text;
  final Function()? press;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 44,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(2, 2),
          blurRadius: 9,
          color: Color.fromRGBO(0, 0, 0, 0.14),
        )
      ]),
      width: size.width / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text!,
        style: TextStyle(color: textColor),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.symmetric(vertical: 10),
          textStyle: const TextStyle(fontWeight: FontWeight.w500)),
    );
  }
}
