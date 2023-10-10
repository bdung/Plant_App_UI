import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/more_item/more_item_screen.dart';

class TitleWitdMoreButton extends StatelessWidget {
  const TitleWitdMoreButton({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWitdCustomUnderline(
            text: title,
          ),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              fixedSize: Size.fromWidth(80),
              padding: EdgeInsets.all(10),
              shape: StadiumBorder(),
            ),
            child: Text(
              "More",
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MoreItemScreen()));
            },
          )
        ],
      ),
    );
  }
}

class TitleWitdCustomUnderline extends StatelessWidget {
  const TitleWitdCustomUnderline({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(right: kDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),
          ),
        ),
      ]),
    );
  }
}
