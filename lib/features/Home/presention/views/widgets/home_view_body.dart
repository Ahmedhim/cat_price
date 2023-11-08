import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cat_project/features/Home/presention/manager/metals_cubit/cubit.dart';
import 'package:cat_project/features/Home/presention/manager/metals_cubit/state.dart';
import 'package:cat_project/features/Home/presention/views/widgets/most_searched_list.dart';
import 'package:cat_project/features/Home/presention/views/widgets/moving_bar.dart';
import 'package:cat_project/features/Home/presention/views/widgets/pgm_table.dart';
import 'package:cat_project/features/Home/presention/views/widgets/tools_list.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'moving_text.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}


class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(hours: 6),()async {
      await BlocProvider.of<MetalsCubit>(context).GetMetals();
    },);
  }
  Widget build(BuildContext context) {
    return  BlocBuilder<MetalsCubit,MetalsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xffFBC821),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(28),
                        bottomLeft: Radius.circular(28)
                    )
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const   Text(
                      'Hi, Ali',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const  SizedBox(height: 5),
                    const Text(
                      'Lets Start Now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const  SizedBox(height: 24),
                    SearchBar(
                      onChanged: (value) {},
                      leading: const Icon(FontAwesomeIcons.magnifyingGlass,
                          color: Color(0xff9094A0)),
                      hintText: "Search",
                      hintStyle: const MaterialStatePropertyAll(
                          TextStyle(color:Color(0xFF9094A0),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                      trailing: [
                        IconButton(onPressed: () {}, icon:  const Icon(Icons.mic,color: Color(0Xff9094A0),),),
                        IconButton(onPressed: () {}, icon:const Icon(Icons.image_outlined,color: Color(0Xff9094A0),),)

                      ],
                      padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),

                    ),

                  ],
                ),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 24,horizontal: 15.5),
                child:   Text(
                  'My Tools',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              const ToolsList(),
             const Padding(
                padding:  EdgeInsets.only(top: 12,left: 24),
                child: Text(
                  'PGM Prices',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 24,top: 5),
                child: Text(
                  '20 February 2023',
                  style: TextStyle(
                    color: Color(0xFF9094A0),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ConditionalBuilder(condition: state is successState,
                builder: (context) => const  PGMTable(),
                fallback: (context) => const Center(child: CircularProgressIndicator(
                  color: Color(0xFFFBC821),
                )),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.5,horizontal: 24),
                child:  Text(
                  'The Most Searched',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              MostSearchedList(),
              const MovingText(),



            ],
          ),
        );
      },
    );
  }
}
