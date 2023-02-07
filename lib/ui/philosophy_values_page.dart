import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:portfolio_website/global/global_data.dart';
import 'package:portfolio_website/global/locator.dart';

class PhilosophyAndValuesPage extends StatelessWidget {
  const PhilosophyAndValuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build PhilosophyAndValuesPage');
    if (!locator<GlobalData>().isMobileSize) {
      return Container(
        height: 150.sp,
        color: ColorUtils.lightBe,
        padding: EdgeInsets.fromLTRB(15.w, 0, 0, 0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Philosophy & values',
                      style: TextStyleUtils.bold(16.sp)
                          .copyWith(color: ColorUtils.black),
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      '"Cuộc sống không phải là cuộc chiến cạnh tranh với những người khác, mà là cuộc chạy đua trường kỳ với chính bản thân mình."',
                      style: TextStyleUtils.regular(10.sp)
                          .copyWith(color: ColorUtils.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/book.jpg',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 350.sp,
        color: ColorUtils.lightBe,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.w, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Philosophy & values',
                      style: TextStyleUtils.bold(16.sp)
                          .copyWith(color: ColorUtils.black),
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      '"Cuộc sống không phải là cuộc chiến cạnh tranh với những người khác, mà là cuộc chạy đua trường kỳ với chính bản thân mình."',
                      style: TextStyleUtils.regular(12.sp)
                          .copyWith(color: ColorUtils.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/book.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    }
  }
}
