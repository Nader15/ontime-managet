import 'package:flutter/material.dart';
import 'package:zari_on_time/Utils/app_alerts.dart';

import '../../../../../Utils/app_colors.dart';
import '../../../../../Utils/app_constants.dart';
import '../../../../Widgets/button_list_widget.dart';
import '../../../../Widgets/titled_textField.dart';

class BookNewClientScreen extends StatelessWidget {
  const BookNewClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(16),
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
            onPressed: () {
              AppAlerts().bookNewClientAlert(context);
            },
            child: const Text("Book"),
          ),
        ),
      ),
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Book new client",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            TitledTextField(
              title: "Name",
            ),
            const SizedBox(height: 16),
            TitledTextField(
              title: "Mobile",
            ),
            const SizedBox(height: 16),
            const ButtonListWidget(
              title: "Service",
            ),
          ],
        ),
      ),
    );
  }
}
