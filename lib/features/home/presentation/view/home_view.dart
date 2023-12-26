import 'package:e_commerce/features/home/presentation/view/icon_head.dart';
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
          )
        ],
      ),
    ));
  }
}
