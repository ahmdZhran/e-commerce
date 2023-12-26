import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/features/home/presentation/widgets/custom_search.dart';
import 'package:e_commerce/features/home/presentation/widgets/flash_sales_container.dart';
import 'package:e_commerce/features/home/presentation/widgets/icon_head.dart';
import 'package:e_commerce/features/home/presentation/widgets/titles_flash_sales.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CartHeadIcon(),
          ),
          SliverToBoxAdapter(
            child: CustomSearchBar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: FlachSalesContainer(),
          ),
        ],
      ),
    ));
  }
}
