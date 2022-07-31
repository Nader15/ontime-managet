import 'package:flutter/material.dart';

import '../../../Utils/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Profile",
          style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
        ),
        actions: [
          TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  AppColors.GREY_SHADE_COLOR,
                ),
              ),
              onPressed: () {},
              child: const Icon(Icons.notification_important_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.MAIN_COLOR,
                      backgroundImage: NetworkImage(
                        "http://simpleicon.com/wp-content/uploads/business-woman-2.png",
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Marwa Tawfik",
                      style: TextStyle(
                        fontSize: 19,
                        color: AppColors.MAIN_COLOR,
                      ),
                    ),
                    Text(
                      "Marwa@aznetsul.com",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ListTile(
                onTap: () {},
                tileColor: AppColors.APPBAR_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: const Icon(Icons.access_time),
                title: const Text("Reservation History"),
              ),
              const SizedBox(height: 16),
              ListTile(
                tileColor: AppColors.APPBAR_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: const Icon(Icons.edit),
                title: const Text("Edit personal Information"),
              ),
              const SizedBox(height: 16),
              ListTile(
                tileColor: AppColors.APPBAR_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: const Icon(Icons.lock),
                title: const Text("Change Password"),
              ),
              const SizedBox(height: 16),
              ListTile(
                tileColor: AppColors.APPBAR_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: AppColors.RED_COLOR,
                ),
                title: const Text(
                  "Log out",
                  style: TextStyle(color: AppColors.RED_COLOR),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                tileColor: AppColors.APPBAR_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: const Icon(
                  Icons.delete,
                  color: AppColors.RED_COLOR,
                ),
                title: const Text(
                  "Delete Account",
                  style: TextStyle(color: AppColors.RED_COLOR),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
