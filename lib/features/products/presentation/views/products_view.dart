import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/features/home/product_cubit/cubit/products_cubit.dart';
import 'package:e_commerce/features/products/presentation/views/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        if (state is ProducLoading) {
          const CircularProgressIndicator();
        }
      },
      builder: (context, state) {
        var cubit = ProductCubit.get(context);
        print(cubit.laptopsModel);
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Text(
                  AppStrigns.yourProducts,
                  style: CustomTextStyle.medium14,
                ),
                // GridView
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        cubit.laptopsModel!.product!.length,
                        (index) => buildProductItem(
                            cubit.laptopsModel!.product![index], context)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
