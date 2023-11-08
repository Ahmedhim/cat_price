import 'package:bloc/bloc.dart';
import 'package:cat_project/core/Api.dart';
import 'package:cat_project/features/Home/data/models/most_searched_model.dart';
import 'package:cat_project/features/Home/presention/manager/metals_cubit/state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/models/metals_model.dart';

class MetalsCubit extends Cubit<MetalsState>{
  MetalsCubit():super(intialState());
  MetalsModel? model;
  SharedPreferences? preferences;
  Future<void>GetMetals()async{
    emit(loadingState());
    Api().get(url: "https://metals-api.com/api/latest?access_key=cc8ubv8izhu8e6hf6ku6n6evi84e6ta89bcuulwu42buota651k96ev8806v&base=USD&symbols=XAU%2CXAG%2CXPD%2CXPT%2CXRH",  headers: {
      "symbols":"XAU%2CXAG%2CXPD%2CXPT%2CXRH"
    })
        .then((value) {
         model=MetalsModel.fromJson(value);
         if(model!.success==true){
           emit(successState());
         }
         else{
           print("error with success");
           emit(errorState("error with success"));
         }
    }).catchError((err){
      print(err.toString());
      emit(errorState(err.toString()));
    });
  }
  MostSearchedModel? mostSearchedModel;
  Future<void>GetMostSearched()async{
    emit(LoadingMostSearcedState());
    Api().get(url: "https://catprice-588efcf30992.herokuapp.com/api/v1/user/item/most-searched",
      token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NTQ3ODRkNWNmMDE5ZTFhMjNhZGMxYzYiLCJuYW1lIjoiTW9oYW1lZCBBbGkiLCJlbWFpbCI6Im1vZWxzbW9raHJhdHlAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJpYXQiOjE2OTk0NTg0MTcsImV4cCI6MTcwMjA1MDQxN30.VszjO4OSGf0lWmLEg1DMHQ5haeDGdphMNGBN75obdek",
    ).then((value) {
          mostSearchedModel=MostSearchedModel.fromJson(value);
          if(mostSearchedModel?.success==true){
            emit(successMostSearcedState());
          }else{
            print("wrong with request");
            emit(ErrorMostSearcedState("wrong with request"));
          }
    }).
    catchError((err){
      print(err.toString());
      emit(ErrorMostSearcedState(err.toString()));
    });
  }
  @override
  void onChange(Change<MetalsState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}