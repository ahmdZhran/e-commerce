import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style13,
      backgroundColor: AppColors.kPrimaryColor,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12))),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.homeActive,
        colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(Assets.home),
    ),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.cartActive,
          colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
        ),
        inactiveIcon: SvgPicture.asset(
          Assets.cart,
          colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
        )),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.searchActive,
        ),
        inactiveIcon: SvgPicture.asset(
          Assets.search,
          colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
        )),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.userActive,
        colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.user,
        colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
      ),
    ),
  ];
}
