import 'package:cat_project/features/Home/presention/views/Favourite_view.dart';
import 'package:cat_project/features/Home/presention/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Calculater/presention/views/calculater_view.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.only(right: 48,left: 24,top: 38,bottom: 102),
    child: Column(
      children: [
      const Row(
         children: [
           CircleAvatar(backgroundImage: AssetImage("assets/splash screen.png"),radius:24 ,),
           Column(children: [
             Text(
               'Ahmed farid',
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 14,
                 fontFamily: 'Poppins',
                 fontWeight: FontWeight.w600,
                 height: 0,
               ),
             ),
             SizedBox(height: 5),
             Text(
               'Ahmed farid@gmail.com',
               style: TextStyle(
                 color: Color(0xFF9094A0),
                 fontSize: 10,
                 fontFamily: 'Poppins',
                 fontWeight: FontWeight.w400,
                 height: 0,
               ),
             ),
           ],),

         ],
       ),
    Padding(
      padding: const EdgeInsets.only(bottom: 38,top: 10),
      child: Container(
        width: double.infinity,
        color: Colors.grey[400],
        height: 1,
      ),
    ),
    DrawerItem(icon: FontAwesomeIcons.magnifyingGlass, text: "Search items",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.favorite_border, text: "Favourite",ontab: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const FavouriteView(),));
        },),
        const Spacer(),
        DrawerItem(icon: Icons.calculate, text: "Calculator",ontab: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const CalculaterView(),));
        },),
        const Spacer(),
        DrawerItem(icon: Icons.list_alt, text: "My lists",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.star, text: "Brands",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.move_to_inbox, text: "Inbox",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.call, text: "Contact us",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.settings, text: "Settings",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.share, text: "Share app",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.subscriptions, text: "Subscriptions",ontab: () {},),
        const Spacer(),
        DrawerItem(icon: Icons.logout, text: "Logout",ontab: () {},)
      ],
    ),
    );
  }
}
