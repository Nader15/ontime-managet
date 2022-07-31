import 'package:flutter/material.dart';

import '../../Utils/app_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: SafeArea(
        child: Container(
          color: AppColors.WHITE_COLOR,
          child: ListView(
            children: [
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.person,
                  color: AppColors.BLACK_COLOR,
                ),
                title: const Text(
                  "Profile",
                  style: TextStyle(color: AppColors.BLACK_COLOR),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.language,
                  color: AppColors.BLACK_COLOR,
                ),
                title: const Text(
                  "App Language",
                  style: TextStyle(color: AppColors.BLACK_COLOR),
                ),
                trailing: const Text(
                  "English",
                  style: TextStyle(color: AppColors.BLACK_COLOR),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.join_inner,
                  color: AppColors.BLACK_COLOR,
                ),
                title: const Text(
                  "Join us",
                  style: TextStyle(color: AppColors.BLACK_COLOR),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.message_outlined,
                  color: AppColors.BLACK_COLOR,
                ),
                title: const Text(
                  "Contact us",
                  style: TextStyle(color: AppColors.BLACK_COLOR),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.info_outline,
                  color: AppColors.BLACK_COLOR,
                ),
                title: const Text(
                  "About us",
                  style: TextStyle(color: AppColors.BLACK_COLOR),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
