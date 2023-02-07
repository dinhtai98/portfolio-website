import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/custom_slide_transition.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:portfolio_website/global/global_data.dart';
import 'package:portfolio_website/global/locator.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build Experience');
    if (!locator<GlobalData>().isMobileSize) {
      return Container(
        height: 240.sp,
        color: ColorUtils.black,
        padding: EdgeInsets.fromLTRB(15.w, 40.sp, 15.w, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WORK EXPERIENCE',
              style: TextStyleUtils.regular(6.sp)
                  .copyWith(color: ColorUtils.transparent07),
            ),
            SizedBox(height: 7.sp),
            Text(
              'Companies I have worked \nfor in the past.',
              style:
                  TextStyleUtils.bold(10.sp).copyWith(color: ColorUtils.white),
            ),
            SizedBox(height: 7.sp),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomSlideTransition(
                    offset: Tween<Offset>(
                      begin: const Offset(-0.3, 0.0),
                      end: const Offset(0.0, 0.0),
                    ),
                    animationDuration: const Duration(milliseconds: 500),
                    curve: Curves.easeInQuad,
                    delay: const Duration(milliseconds: 300),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '01',
                          style: TextStyleUtils.regular(20.sp)
                              .copyWith(color: ColorUtils.transparent07),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'ECR VIETNAM CO., LTD',
                            style: TextStyleUtils.bold(7.sp)
                                .copyWith(color: ColorUtils.lightBlue),
                            children: [
                              TextSpan(
                                text: ', Device developer',
                                style: TextStyleUtils.bold(7.sp)
                                    .copyWith(color: ColorUtils.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Text(
                            'I’ve worked on a wide variety of internal tools for ecr over the past 2 years.',
                            style: TextStyleUtils.regular(6.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Text(
                          'Main responsibilities:',
                          style: TextStyleUtils.bold(6.sp)
                              .copyWith(color: ColorUtils.transparent07),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Text(
                            '• Design and implement code base within the technical requirement',
                            style: TextStyleUtils.regular(6.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Text(
                            '• Maintain code',
                            style: TextStyleUtils.regular(6.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Text(
                            '• Work with the client to solve problems and tech requirements - Research technology to apply application',
                            style: TextStyleUtils.regular(6.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.sp),
                Expanded(
                  child: CustomSlideTransition(
                    offset: Tween<Offset>(
                      begin: const Offset(-0.3, 0.0),
                      end: const Offset(0.0, 0.0),
                    ),
                    animationDuration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 400),
                    curve: Curves.easeInQuad,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '02',
                          style: TextStyleUtils.regular(20.sp)
                              .copyWith(color: ColorUtils.transparent07),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Huflit',
                            style: TextStyleUtils.bold(7.sp)
                                .copyWith(color: ColorUtils.green),
                            children: [
                              TextSpan(
                                text: ', Mobile Developer Fresher',
                                style: TextStyleUtils.bold(7.sp)
                                    .copyWith(color: ColorUtils.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Text(
                            'I started my developer career with HUFLIT and CSIRO, I was in charge of creating an android application',
                            style: TextStyleUtils.regular(6.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Text(
                          'Main responsibilities:',
                          style: TextStyleUtils.bold(6.sp)
                              .copyWith(color: ColorUtils.transparent07),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Text(
                            '• Research and development of CSI system under the management of HUFLIT and CSIRO ',
                            style: TextStyleUtils.regular(6.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Text(
                            '• Research and development of location identification system by bluetooth.',
                            style: TextStyleUtils.regular(6.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 540.sp,
        color: ColorUtils.black,
        padding: EdgeInsets.fromLTRB(15.w, 40.sp, 15.w, 15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WORK EXPERIENCE',
              style: TextStyleUtils.regular(10.sp)
                  .copyWith(color: ColorUtils.transparent07),
            ),
            SizedBox(height: 7.sp),
            Text(
              'Companies I have worked \nfor in the past.',
              style:
                  TextStyleUtils.bold(16.sp).copyWith(color: ColorUtils.white),
            ),
            SizedBox(height: 7.sp),
            Expanded(
              child: CustomSlideTransition(
                offset: Tween<Offset>(
                  begin: const Offset(-0.3, 0.0),
                  end: const Offset(0.0, 0.0),
                ),
                animationDuration: const Duration(milliseconds: 500),
                curve: Curves.easeInQuad,
                delay: const Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '01',
                      style: TextStyleUtils.regular(30.sp)
                          .copyWith(color: ColorUtils.transparent07),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'ECR VIETNAM CO., LTD',
                        style: TextStyleUtils.bold(14.sp)
                            .copyWith(color: ColorUtils.lightBlue),
                        children: [
                          TextSpan(
                            text: ', Device developer',
                            style: TextStyleUtils.bold(14.sp)
                                .copyWith(color: ColorUtils.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.sp),
                      child: Text(
                        'I’ve worked on a wide variety of internal tools for ecr over the past 2 years.',
                        style: TextStyleUtils.regular(12.sp)
                            .copyWith(color: ColorUtils.transparent07),
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Text(
                      'Main responsibilities:',
                      style: TextStyleUtils.bold(14.sp)
                          .copyWith(color: ColorUtils.transparent07),
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• Design and implement code base within the technical requirement',
                            style: TextStyleUtils.regular(10.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            '• Maintain code',
                            style: TextStyleUtils.regular(10.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            '• Work with the client to solve problems and tech requirements - Research technology to apply application',
                            style: TextStyleUtils.regular(10.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.sp),
            Expanded(
              child: CustomSlideTransition(
                offset: Tween<Offset>(
                  begin: const Offset(-0.3, 0.0),
                  end: const Offset(0.0, 0.0),
                ),
                animationDuration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 400),
                curve: Curves.easeInQuad,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '02',
                      style: TextStyleUtils.regular(30.sp)
                          .copyWith(color: ColorUtils.transparent07),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Huflit',
                        style: TextStyleUtils.bold(14.sp)
                            .copyWith(color: ColorUtils.green),
                        children: [
                          TextSpan(
                            text: ', Mobile Developer Fresher',
                            style: TextStyleUtils.bold(14.sp)
                                .copyWith(color: ColorUtils.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.sp),
                      child: Text(
                        'I started my developer career with HUFLIT and CSIRO, I was in charge of creating an android application',
                        style: TextStyleUtils.regular(12.sp)
                            .copyWith(color: ColorUtils.transparent07),
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Text(
                      'Main responsibilities:',
                      style: TextStyleUtils.bold(14.sp)
                          .copyWith(color: ColorUtils.transparent07),
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• Research and development of CSI system under the management of HUFLIT and CSIRO ',
                            style: TextStyleUtils.regular(10.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            '• Research and development of location identification system by bluetooth.',
                            style: TextStyleUtils.regular(10.sp)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
