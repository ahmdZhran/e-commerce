import 'package:e_commerce/core/network/remote/dio_helper.dart';
import 'package:e_commerce/core/utls/constants.dart';
import 'package:e_commerce/features/home/data/models/products_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  static ProductCubit get(context) => BlocProvider.of(context);
  LaptopsModel? laptopsModel;

  Future<void> getHomeProduct() async {
    print('its loading now========');
    emit(ProducLoading());

    DioHelperStore.getData(url: ApiConstants.productsApi).then((value) {
      laptopsModel = LaptopsModel.fromJson(value.data);

      emit(ProducSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(ProducFailer(errMessage: error));
    });
  }
}
