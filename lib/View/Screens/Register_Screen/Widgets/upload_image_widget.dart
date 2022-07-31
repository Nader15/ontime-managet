import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_connect/http/src/multipart/form_data.dart';
import 'package:get/get_connect/http/src/multipart/multipart_file.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zari_on_time/Utils/app_colors.dart';

import '../../../../Utils/app_constants.dart';

class UploadImageWidget extends StatelessWidget {
  final void Function(XFile) callback;
  UploadImageWidget(this.callback);

  ImagePicker _imagePickerr = new ImagePicker();
  _imgFromCamera() async {
    XFile? image = await _imagePickerr.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    print('camera');

    if (image != null) {
      callback(image);

      print(image.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Image or Logo"),
        const SizedBox(height: 8),
        Container(
          height: 150,
          decoration: BoxDecoration(
              color: Color(0xffF9F9F9),
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    print('object');
                    _imgFromCamera();
                  },
                  icon: const Icon(
                    Icons.photo_camera_outlined,
                  ),
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  AppConstants.IMAGE_ICON,
                  height: 52,
                  width: 52,
                  color: AppColors.DARK_GREY_COLOR,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
