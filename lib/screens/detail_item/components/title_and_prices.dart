import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class TitleAndPrices extends StatelessWidget {
  const TitleAndPrices({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });
  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "$country\n",
                  style: TextStyle(color: kPrimaryColor.withOpacity(0.5))),
            ]),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
