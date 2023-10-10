import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  IconCard(
                    icon: "lib/assets/icons/sun.svg",
                    description: new DescriptionPlant("Sun", "description"),
                  ),
                  IconCard(
                    icon: "lib/assets/icons/icon_2.svg",
                    description:
                        new DescriptionPlant("Temperature", "description"),
                  ),
                  IconCard(
                    icon: "lib/assets/icons/icon_3.svg",
                    description:
                        new DescriptionPlant("Humidity", "description"),
                  ),
                  IconCard(
                    icon: "lib/assets/icons/icon_4.svg",
                    description: new DescriptionPlant("Wind", "description"),
                  ),
                ],
              ),
            )),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.75,
              width: MediaQuery.sizeOf(context).width * 0.73,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                  image: DecorationImage(
                      scale: 0.5,
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage(image))),
            )
          ],
        ),
      ),
    );
  }
}

class DescriptionPlant {
  String title;
  String description;

  DescriptionPlant(this.title, this.description);
}

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.icon,
    required this.description,
  });
  final String icon;
  final DescriptionPlant description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          _dialogBuilder(context, description.title, description.description),
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).width * 0.03),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        height: MediaQuery.sizeOf(context).height * 0.07,
        width: MediaQuery.sizeOf(context).height * 0.07,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  offset: Offset(5, 10),
                  blurRadius: 20,
                  color: kPrimaryColor.withOpacity(0.22)),
            ]),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

Future<void> _dialogBuilder(
    BuildContext context, String title, String contentDescription) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text("$contentDescription"),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Exit'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
