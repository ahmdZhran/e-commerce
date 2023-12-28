import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/features/home/presentation/widgets/heart_icon_widget.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 1.0, crossAxisSpacing: 1.0),
            itemBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CartItem());
            }));
  }
}

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey.withOpacity(0.2),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(AppAssets.laptop)),
          const SizedBox(
            height: 5,
          ),
          const Text('LapToP lenovoooooooooo'),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              const Expanded(
                child: Row(
                  children: [
                    FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "100",
                          style: TextStyle(fontSize: 13),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "200",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.5,
                            decoration: TextDecoration.lineThrough),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                child: const Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.grey,
                ),
                onTap: () {
                  // Add | remove product favorites
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
