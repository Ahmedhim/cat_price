import 'package:cat_project/features/Calculater/presention/views/widgets/metal_column.dart';
import 'package:cat_project/features/Calculater/presention/views/widgets/metal_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Home/presention/manager/metals_cubit/cubit.dart';

class MetalsTable extends StatelessWidget {
  const MetalsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: const Color(0xFFFBC821),width: 1,
        )
      ),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 10),
         const Row(
            children: [
              Spacer(),
              Text(
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
             const MetalsColumn(text1: "pt", text2: "pd", text3: "rh",text4: "",),
             const  Spacer(),
              MetalsColumn(text1: BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPT!.toStringAsFixed(2),
                  text2: BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPD!.toStringAsFixed(2),
                  text3: BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXRH!.toStringAsFixed(2),
                  text4: ""),
             const Spacer(),
              MetalsColumn(text1:(BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPT!/31.105).toStringAsFixed(2),
                  text2: (BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPD!/31.9).toStringAsFixed(2),
                  text3: (BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXRH!/35.8).toStringAsFixed(2),
                  text4: ""),
             const Spacer(),

            ],
          ),
         const MetalRow(text: "pt return 0.98", ounce: "pd return 0.98",
              gram: "rh return 0.90"),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
