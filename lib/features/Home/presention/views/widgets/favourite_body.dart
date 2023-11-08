import 'package:flutter/material.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ListView.builder(scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) =>  FavouriteItem(context),
        ));
  }
}
Widget FavouriteItem(context)=>Padding(
  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
  child: Container(
    width: 327,
    height: 118,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x14000000),
          blurRadius: 10,
          offset: Offset(0, 0),
          spreadRadius: 0,
        )
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 76,
          height: 94,
          decoration: ShapeDecoration(
            image:  const DecorationImage(
              image: AssetImage("assets/Rectangle 41914.png"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          height: 83,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 149,
                    child: Text(
                      "Product name",
                      style:  TextStyle(
                        color: Color(0xFF110317),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                   SizedBox(height: 10),
                  SizedBox(
                    width: 59,
                    child: Text(
                      '100\$',
                      style:  TextStyle(
                        color: Color(0xFFFBC821),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                   SizedBox(height: 10),
                  SizedBox(
                    width: 149,
                    child: Text(
                      'Brand manufacture',
                      style:  TextStyle(
                        color: Color(0xFF9094A0),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(onPressed: () {

              }, icon: const Icon(Icons.favorite,color:Color(0xFFFBC821) ,))
            ],
          ),
        ),
      ],
    ),
  ),
);