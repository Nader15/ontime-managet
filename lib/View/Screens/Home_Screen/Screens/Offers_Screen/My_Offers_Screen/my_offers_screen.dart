import 'package:flutter/material.dart';

import '../../../../../../Utils/app_colors.dart';
import '../../../../../../Utils/app_constants.dart';
import 'my_offers_list_widget.dart';

class MyOffersScreen extends StatelessWidget {
  const MyOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyOffersListWidget(),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: AppConstants.mediaWidth(context),
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                backgroundColor: MaterialStateProperty.all(
                  AppColors.MAIN_COLOR,
                ),
                foregroundColor: MaterialStateProperty.all(
                  AppColors.BLACK_COLOR,
                ),
              ),
              onPressed: () {},
              child: const Text("Add New Offer"),
            ),
          ),
        ),
      ],
    );
  }
}
