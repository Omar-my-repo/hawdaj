import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class TitleSection extends StatelessWidget {
  TitleSection({super.key, this.padding, required this.title, this.onSeeAll});

  EdgeInsets? padding;
  String title;
  Function()? onSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(top: 20.0.w,right: 20.w,left: 20,bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.textStyle22,
          ),
          InkWell(
            onTap: onSeeAll,
            child: Text(
              'عرض الكل',
              style: Styles.textStyle16,
            ),
          )
        ],
      ),
    );
  }
}
