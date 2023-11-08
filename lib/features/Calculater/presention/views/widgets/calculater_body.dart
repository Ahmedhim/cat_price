import 'package:cat_project/features/Calculater/presention/views/widgets/basic_calculater.dart';
import 'package:cat_project/features/Calculater/presention/views/widgets/metals_table.dart';
import 'package:cat_project/features/Home/presention/manager/metals_cubit/cubit.dart';
import 'package:cat_project/features/Home/presention/manager/metals_cubit/state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculaterBody extends StatelessWidget {
  const CalculaterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetalsCubit,MetalsState>(
      builder: (context, state) {
        return  SingleChildScrollView(
          child:  Padding(
            padding:  const EdgeInsets.symmetric(horizontal:24,vertical: 20 ),
            child:  Column(
              children: [
                ConditionalBuilder(
                  condition: state is successState,
                  builder: (context) => const MetalsTable(),
                  fallback:(context) =>  const Center(child: CircularProgressIndicator(
                    color: Color(0xFF9094A0),
                  )),
                    ),
               const SizedBox(height: 20),
               const BasicCalculater(),

              ],
            ),
          ),
        );
      },
    );
  }
}
