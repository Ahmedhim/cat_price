import 'package:cat_project/features/Home/presention/manager/metals_cubit/cubit.dart';
import 'package:cat_project/features/Home/presention/manager/metals_cubit/state.dart';
import 'package:cat_project/features/Home/presention/views/widgets/most_searched_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostSearchedList extends StatelessWidget {
  const MostSearchedList({super.key, this.controller});
 final ScrollController?controller;
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<MetalsCubit,MetalsState>(
      builder: (context, state) {

        return SizedBox(
          height: 180,
          width: double.infinity,
          child: ListView.builder(scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: 3,
            itemBuilder: (context, index) =>  MostSearchedItem( ),
        ));}
    );
  }
}
