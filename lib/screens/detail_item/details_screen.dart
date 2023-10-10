// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/models/plant_item.dart';
import 'package:plant_app_ui/screens/detail_item/components/image_and_icons.dart';
import 'package:plant_app_ui/screens/detail_item/components/title_and_prices.dart';
import 'package:plant_app_ui/screens/homepage/header.dart';
import 'package:plant_app_ui/widget/plant_card.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.plantCardItem});
  final PlantCardItem plantCardItem;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIcons(
              image: widget.plantCardItem.image,
            ),
            TitleAndPrices(
              title: "${widget.plantCardItem.title}",
              country: "${widget.plantCardItem.country}",
              price: 400,
            ),
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity != 1 ? quantity -= 1 : quantity = 1;
                      });
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              color: kPrimaryColor.withOpacity(0.22)),
                        ],
                      ),
                      child: Icon(
                        Icons.remove,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  Text(
                    "$quantity",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity != widget.plantCardItem.stock
                            ? quantity += 1
                            : quantity = widget.plantCardItem.stock;
                      });
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              color: kPrimaryColor.withOpacity(0.22)),
                        ],
                      ),
                      child: Icon(
                        Icons.add,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.08,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Description",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  color: kTextColor,
                                  fontWeight: FontWeight.bold)),
                    ],
                  )),
                  Spacer(),
                  StartItem(start: widget.plantCardItem.star),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            DescriptionPlantDetail(
                text:
                    "Description detail Description detailDescription detail Description detail",
                max: 0.2),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding / 2),
        child: Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: MediaQuery.sizeOf(context).height * 0.1,
              child: ElevatedButton(
                  child: Text("Buy Now"),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(30))),
                  )),
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
                child: ElevatedButton(
                    child: Icon(
                      Icons.shopping_cart,
                      color: kPrimaryColor,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBackgroundColor,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionPlantDetail extends StatefulWidget {
  final String text;
  final double max;
  const DescriptionPlantDetail(
      {Key? key, required this.text, required this.max})
      : super(key: key);

  @override
  _DescriptionPlantDetailState createState() => _DescriptionPlantDetailState();
}

class _DescriptionPlantDetailState extends State<DescriptionPlantDetail> {
  TextPainter? textPainter;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return isOpen
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(
                            text: widget.text,
                            style: Theme.of(context).textTheme.bodyMedium),
                        WidgetSpan(
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isOpen = !isOpen;
                                  });
                                },
                                child: Text(
                                  "Less more",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent),
                                )),
                            style: Theme.of(context).textTheme.bodyMedium)
                      ]),
                    ))),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.start,
                maxLines: 2,
                text: TextSpan(children: [
                  TextSpan(
                      text: widget.text.substring(
                              0,
                              int.parse(
                                  "${(widget.text.length * widget.max).toInt()}")) +
                          "...",
                      style: Theme.of(context).textTheme.bodyMedium),
                  WidgetSpan(
                      child: InkWell(
                          mouseCursor: SystemMouseCursors.click,
                          onTap: () {
                            setState(() {
                              isOpen = !isOpen;
                            });
                          },
                          child: Text(
                            "more",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),
                          )),
                      style: Theme.of(context).textTheme.bodyMedium)
                ]),
              ),
            ),
          );
  }
}
