import 'package:e_commerce/features/home/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ListOfProductItem extends StatelessWidget {
  const ListOfProductItem({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: ProductItem(
              height: 170,
            ),
          );
        },
      ),
    );
  }
}
