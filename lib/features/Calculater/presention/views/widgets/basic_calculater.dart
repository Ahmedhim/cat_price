import 'package:cat_project/features/Calculater/presention/views/widgets/calc_button.dart';
import 'package:cat_project/features/Calculater/presention/views/widgets/calc_field.dart';
import 'package:cat_project/features/Home/presention/manager/metals_cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicCalculater extends StatefulWidget {
  const BasicCalculater({super.key});

  @override
  State<BasicCalculater> createState() => _BasicCalculaterState();
}

class _BasicCalculaterState extends State<BasicCalculater> {
 final TextEditingController pdController=TextEditingController();
 final TextEditingController ptController=TextEditingController();
 final TextEditingController rhController=TextEditingController();
 final TextEditingController exchhangeController=TextEditingController();
 final TextEditingController weightController=TextEditingController();
 final TextEditingController pdppmController=TextEditingController();
 final TextEditingController ptppmController=TextEditingController();
 final TextEditingController rhppmController=TextEditingController();
 final TextEditingController priceDollarController=TextEditingController();
 final TextEditingController priceController=TextEditingController();
 final TextEditingController ptReturnController=TextEditingController();
 final TextEditingController pdReturnController=TextEditingController();
 final TextEditingController rhReturnController=TextEditingController();
 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pdController.dispose();
    ptController.dispose();
    rhController.dispose();
    exchhangeController.dispose();
    weightController.dispose();
    pdppmController.dispose();
    ptppmController.dispose();
    rhppmController.dispose();
    priceDollarController.dispose();
    priceController.dispose();
    ptReturnController.dispose();
    pdReturnController.dispose();
    rhReturnController.dispose();
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    ptController.text=(BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPT!/31.105).toStringAsFixed(2);
    pdController.text=(BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXPD!/31.9).toStringAsFixed(2);
    rhController.text=(BlocProvider.of<MetalsCubit>(context).model!.rates!.USDXRH!/35.8).toStringAsFixed(2);
    ptReturnController.text="0.98";
    pdReturnController.text="0.98";
    rhReturnController.text="0.90";
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const Center(
          child: Text(
            'Calculator',
            style: TextStyle(
              color: Color(0xFFFBC821),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[400],
          ),
        ),
Row(
  children: [
    SizedBox(width: MediaQuery.sizeOf(context).width*.42,
        child:  CalculaterField(hintText: "PD/Gram",icon: FontAwesomeIcons.dollarSign,controller:pdController,)),
    const Spacer(),
    SizedBox(
        width: MediaQuery.sizeOf(context).width*.42,
        child:  CalculaterField(hintText: "PT/Gram",icon: FontAwesomeIcons.dollarSign,controller: ptController,)),
  ],
),
       const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: MediaQuery.sizeOf(context).width*.42,
                child:  CalculaterField(hintText: "RH/Gram",icon: FontAwesomeIcons.dollarSign,controller: rhController,)),
            const Spacer(),
            SizedBox(
                width: MediaQuery.sizeOf(context).width*.42,
                child:  CalculaterField(hintText: "Exchange",icon: Icons.currency_exchange,controller: exchhangeController,)),
          ],
        ),
      const  SizedBox(height: 20,),
        CalculaterField(hintText: "Weight/KG", icon: Icons.monitor_weight_rounded,controller: weightController),
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'pt return', icon: FontAwesomeIcons.dollarSign,controller: ptReturnController),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'pd return', icon: FontAwesomeIcons.dollarSign,controller: pdReturnController),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'rh return', icon: FontAwesomeIcons.dollarSign,controller: rhReturnController),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'PD/ppm', icon: Icons.list,controller: pdppmController),
        ),
         Padding(
          padding:  const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'PT/ppm', icon: Icons.list,controller: ptppmController),
        ),
         Padding(
          padding:  const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'RH/ppm', icon: Icons.list,controller: rhppmController),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'Price Dollar', icon: FontAwesomeIcons.dollarSign,controller: priceDollarController),
        ),
         Padding(
          padding:  const EdgeInsets.symmetric(vertical: 10),
          child:  CalculaterField(hintText: 'Price', icon: Icons.currency_exchange,controller: priceController),
        ),
 Padding(
  padding: const EdgeInsets.only(bottom: 33,top: 40 ),
  child: CalculatorButton(ontab: () {
 priceDollarController.text= getPriceDollar(pdppn: double.parse(pdppmController.text) , pdgram: double.parse(pdController.text),pdreturn: double.parse(pdReturnController.text),
     ptreturn: double.parse(ptReturnController.text),
    rhreturn: double.parse(rhReturnController.text),
    weight: double.parse(weightController.text), ptppn: double.parse(ptppmController.text) , ptgram: double.parse(ptController.text) ,
    rhppn: double.parse(rhppmController.text ), rhgram: double.parse(rhController.text)).toString();
 priceController.text=getPrice(pdppn: double.parse(pdppmController.text), rhreturn:double.parse(rhReturnController.text),ptreturn: double.parse(ptReturnController.text),
     pdreturn:  double.parse(pdReturnController.text),
     pdgram: double.parse(pdController.text),
     weight: double.parse(weightController.text), ptppn:  double.parse(ptppmController.text),
     ptgram:  double.parse(ptController.text), rhppn: double.parse(rhppmController.text ),
     rhgram: double.parse(rhController.text),exchange:double.parse(exchhangeController.text)).toString();
 setState(() {

 });
  },),
),

      ],
    );
  }
}
double getPriceDollar({required pdppn,required pdgram,required pdreturn,required ptreturn,required rhreturn,
required weight,required ptppn,required ptgram,required rhppn,
required rhgram, }) {
return((pdppn*weight/1000*pdreturn*pdgram)+(ptppn*weight/1000*ptreturn*ptgram)+(rhppn*weight/1000*rhreturn*rhgram));
}

double getPrice({required pdppn,required pdgram,required exchange,required pdreturn,required ptreturn,required rhreturn,
required weight,required ptppn,required ptgram,required rhppn,
required rhgram, }) {
return((pdppn*weight/1000*pdreturn*pdgram)+(ptppn*weight/1000*ptreturn*ptgram)+(rhppn*weight/1000*rhreturn*rhgram))*exchange;
}