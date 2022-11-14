import 'package:flutter/material.dart';
import 'package:river_central/controllers/app_colors.dart';
import 'package:river_central/controllers/utils/app_images.dart';

class Dashboard extends StatefulWidget {
  final Widget screen;

  Dashboard({
    Key? key,
    required this.screen,
  }) : super(key: key);

  static _DashboardState? of(BuildContext context) =>
      context.findAncestorStateOfType<_DashboardState>();

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isDrawerOpened = false;

  void toggleDrawer() {
    isDrawerOpened = !isDrawerOpened;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  AppImages.drawerBackground,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: MediaQuery.of(context).size.height * 0.12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DrawerTile(
                    title: "Profile",
                    tileImage: AppImages.profileIcon,
                  ),
                  const SizedBox(height: 30.0),
                  DrawerTile(
                    title: "My orders",
                    tileImage: AppImages.buyIcon,
                  ),
                  const SizedBox(height: 30.0),
                  DrawerTile(
                    title: "Favourite",
                    tileImage: AppImages.heartIcon,
                  ),
                  const SizedBox(height: 30.0),
                  DrawerTile(
                    title: "Delivery",
                    tileImage: AppImages.bagIcon,
                  ),
                  const SizedBox(height: 30.0),
                  DrawerTile(
                    title: "Settings",
                    tileImage: AppImages.settingIcon,
                  ),
                  const SizedBox(height: 30.0),
                  DrawerTile(
                    title: "Logout",
                    tileImage: AppImages.logoutIcon,
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            top: isDrawerOpened ? MediaQuery.of(context).size.height * 0.2 : 0,
            right: isDrawerOpened
                ? -(MediaQuery.of(context).size.width * 0.35)
                : 0,
            left: isDrawerOpened ? MediaQuery.of(context).size.width * 0.65 : 0,
            bottom:
                isDrawerOpened ? MediaQuery.of(context).size.height * 0.2 : 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isDrawerOpened ? 20.0 : 0.0),
              child: widget.screen,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String title, tileImage;
  final VoidCallback? onPressed;

  const DrawerTile({
    Key? key,
    required this.title,
    required this.tileImage,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(tileImage),
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.background,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Divider(
                      thickness: 0.6,
                      color: AppColors.background,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
