import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Utils/app_colors.dart';
import '../../../Utils/app_constants.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "About Us",
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AppConstants.DARK_LOGO,
                  // fit: BoxFit.cover,
                  // width: 200,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Zari on Time",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "It’s an application for booking appointments with service and product providers in all regions of the Kingdom of Saudi Arbia and Egypt to preserve the time of the customer and the facility.",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 24),
              const Text(
                "Follow us:",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: AppColors.BLUE_COLOR,
                            width: 25,
                          ),
                          const Text(
                            "ZARI Commerce",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: AppColors.BLUE_COLOR,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "ZARI.EGYPT",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/instagram.svg",
                            // color: AppColors.BLUE_COLOR,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "ZARI.Commerce",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/linkedin.svg",
                            // color: AppColors.BLUE_COLOR,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "zari.egypt",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/whatsapp.svg",
                            // color: AppColors.BLUE_COLOR,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "ZARI Commerce",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: const [
                          Icon(
                            Icons.phone,
                            size: 20,
                            color: AppColors.DARK_GREY_COLOR,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "ZARI.EGYPT",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: const [
                          Icon(
                            Icons.language,
                            size: 20,
                            color: AppColors.DARK_GREY_COLOR,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "ZARI.Commerce",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: const [
                          Icon(
                            Icons.mail_outline,
                            size: 20,
                            color: AppColors.DARK_GREY_COLOR,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "zari.egypt",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
