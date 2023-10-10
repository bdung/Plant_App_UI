import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/models/plant_item.dart';
import 'package:plant_app_ui/screens/detail_item/details_screen.dart';
import 'package:plant_app_ui/screens/homepage/recommend_plant.dart';
import 'package:plant_app_ui/screens/more_item/components/category.dart';
import 'package:plant_app_ui/widget/list_item_plant.dart';
import 'package:plant_app_ui/widget/plant_card.dart';

class MoreItemScreen extends StatefulWidget {
  const MoreItemScreen({super.key});

  @override
  State<MoreItemScreen> createState() => _MoreItemScreenState();
}

class _MoreItemScreenState extends State<MoreItemScreen> {
  bool isSelected = false;
  List<PlantCardItem> plants = [
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_1.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_2.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_3.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_1.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_2.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_3.png",
      country: "Rubusan",
      price: 400,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: kBackgroundColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              width: 250,
              // height: 100,
              alignment: Alignment.center,

              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
              height: MediaQuery.sizeOf(context).height * 0.05,
              decoration: BoxDecoration(
                // color: kBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                        onChanged: (value) {},
                        style: TextStyle(color: kBackgroundColor),
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.red)),
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: kBackgroundColor.withOpacity(0.5)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kBackgroundColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kBackgroundColor),
                          ),
                        )),
                  ),
                  SvgPicture.asset("lib/assets/icons/search.svg"),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.filter_list,
                color: kBackgroundColor,
              ),
              onPressed: () {},
            ),
          ]),
      body: Column(children: <Widget>[
        CategoryItemScreen(),
        ListItemPlant(plants: plants),
      ]),
    );
  }
}
