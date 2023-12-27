import 'package:e_commerce/features/home/presentation/widgets/custom_search.dart';
import 'package:e_commerce/features/home/presentation/widgets/electronic_text.dart';
import 'package:e_commerce/features/home/presentation/widgets/flash_sales_container.dart';
import 'package:e_commerce/features/home/presentation/widgets/icon_head.dart';
import 'package:e_commerce/features/home/presentation/widgets/see_all_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CartHeadIcon(),
            ),
            const SliverToBoxAdapter(
              child: CustomSearchBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height * 0.05,
              ),
            ),
            const SliverToBoxAdapter(
              child: FlashSalesContainer(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: screenSize.height * 0.03)),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  const ElectronicDealsText(),
                  SizedBox(width: screenSize.width * 0.4),
                  const SeeAllTextWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
