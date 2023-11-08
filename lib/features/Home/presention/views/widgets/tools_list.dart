import 'package:cat_project/features/Calculater/presention/views/calculater_view.dart';
import 'package:flutter/material.dart';

import 'ToolsItem.dart';

class ToolsList extends StatelessWidget {
  const ToolsList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      ToolsItem(image: "assets/flat-color-icons_calculator.png", text: "Calculator", ontab: () {
Navigator.push(context, MaterialPageRoute(builder: (context) =>const CalculaterView(),));
      },),
      const Spacer(),
      ToolsItem(image: "assets/twemoji_clipboard.png", text: "Price List", ontab: () {},),
      const Spacer(),
      ToolsItem(image: "assets/twemoji_open-book.png", text: "My Catalog", ontab: () {},),
      const Spacer(),
      ToolsItem(image: "assets/Group 510.png", text: "Charts", ontab: () {},),
      const Spacer(),
      ToolsItem(image: "assets/flat-color-icons_electronics.png", text: "electronics", ontab: () {},)
    ],);
  }
}
