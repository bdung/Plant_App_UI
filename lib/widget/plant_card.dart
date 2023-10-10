import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/models/plant_item.dart';
import 'package:plant_app_ui/screens/detail_item/details_screen.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.press,
    required this.plantCardItem,
  });
  final PlantCardItem plantCardItem;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding / 2),
      width: MediaQuery.sizeOf(context).width * 0.4,
      child: Column(children: [
        Image.asset(plantCardItem.image),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreen(plantCardItem: plantCardItem)));
          },
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.12,
            padding: EdgeInsets.all(kDefaultPadding / 4),
            decoration: BoxDecoration(
                color: kBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${plantCardItem.title}".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      Text("${plantCardItem.country}".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12,
                              color: kPrimaryColor.withOpacity(0.5))),
                      StartItem(
                        start: 4,
                      )
                    ],
                  ),
                  Spacer(),
                  Text('\$${plantCardItem.price}',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ]),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding / 4),
                  child: Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.04,
                        child: ElevatedButton(
                            child: Text("Buy Now"),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            )),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.04,
                          child: ElevatedButton(
                              child: Icon(
                                Icons.shopping_cart,
                                color: kPrimaryColor,
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: kBackgroundColor,
                                side: BorderSide(width: 0, color: Colors.white),
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class StartItem extends StatelessWidget {
  const StartItem({
    super.key,
    required this.start,
  });
  final int start;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          i < start
              ? Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 10,
                )
              : Icon(
                  Icons.star_outline,
                  color: Colors.orange,
                  size: 10,
                ),
      ],
    );
  }
}
