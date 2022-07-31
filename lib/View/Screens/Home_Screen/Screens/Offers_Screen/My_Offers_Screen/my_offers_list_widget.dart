import 'package:flutter/material.dart';

import '../../../../../../Utils/app_colors.dart';

class MyOffersListWidget extends StatelessWidget {
  const MyOffersListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, index) {
        return InkWell(
          // onTap: () async {},
          child: Container(
            // margin: const EdgeInsets.only(right: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: AppColors.MAIN_COLOR.withOpacity(0.3),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      // width: 120,
                      fit: BoxFit.cover,
                      "https://thedesignavenue.net/wp-content/uploads/2019/06/TDA-Retail-Beauty-Center-Waterway-10.jpg",
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 150,
                          child: Text(
                            "Belladonna Beauty Center",
                            style: TextStyle(
                                color: AppColors.BLACK_COLOR,
                                fontSize: 15,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // SizedBox(height: 10),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "Beauty Salon",
                            style: TextStyle(
                              color: AppColors.DARK_GREY_COLOR,
                              fontSize: 12,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        // SizedBox(height: 10),
                        SizedBox(
                          width: 200,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.location_on_outlined,
                                size: 15,
                              ),
                              Text(
                                "Sheikh zayed",
                                style: TextStyle(
                                  color: AppColors.DARK_GREY_COLOR,
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
