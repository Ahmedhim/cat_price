import 'package:cat_project/features/Home/presention/manager/metals_cubit/cubit.dart';
import 'package:cat_project/features/Home/presention/views/widgets/up_down_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../Calculater/presention/views/widgets/metal_column.dart';
import '../../../../Calculater/presention/views/widgets/metal_row.dart';

class PGMTable extends StatefulWidget {
  const PGMTable({super.key});

  @override
  State<PGMTable> createState() => _PGMTableState();
}

class _PGMTableState extends State<PGMTable> {
  SharedPreferences? preferences;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Container(
        decoration:   ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
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
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Row(
              children: [
                Spacer(),
                Text (
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                Spacer(),
                Text(
                  'Up/Down',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  'Per Ounce',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                Spacer(),
                Text(
                  'Per Gram',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                Spacer(),
              ],
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[400],
              ),
            ),
            Row(
              children: [
                const Spacer(),
                const MetalsColumn(text1: "pt", text2: "pd", text3: "rh",text4: "Au",),
                const  Spacer(),
                const Up_DownCalumn(),
                const  Spacer(),
                MetalsColumn(text1: BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPT!.toStringAsFixed(2), text2: BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPD!.toStringAsFixed(2),
                    text3: BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXRH!.toStringAsFixed(2),
                    text4: BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXAU!.toStringAsFixed(2)),
                const Spacer(),
                MetalsColumn(
                  text1:(BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPT!/31.105).toStringAsFixed(2),
                    text2: (BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPD!/31.9).toStringAsFixed(2),
                    text3: (BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXRH!/35.8).toStringAsFixed(2),
                    text4: (BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXAU!/31.10).toStringAsFixed(2),),
                const Spacer(),

              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
