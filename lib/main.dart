import 'package:cat_project/features/Home/presention/manager/metals_cubit/cubit.dart';
import 'package:cat_project/features/Home/presention/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/SharedPreference.dart';

void main() async{
  runApp(const CatProject());
  await Preference.init();
}

class CatProject extends StatelessWidget {
  const CatProject({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  MetalsCubit()..GetMetals()..GetMostSearched(),
      child: const MaterialApp (
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
