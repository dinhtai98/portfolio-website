import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/custom_slide_transition.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build Experience');
    return Container(
      color: ColorUtils.black,
      child: Responsive(
        mobile: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'WORK EXPERIENCE',
                maxLines: 1,
                style: TextStyleUtils.regular(Constants.headerSize)
                    .copyWith(color: ColorUtils.transparent07),
              ),
              const SizedBox(height: 7),
              Text(
                'Companies I have worked \nfor in the past.',
                style: TextStyleUtils.bold(Constants.subheaderSize)
                    .copyWith(color: ColorUtils.white),
              ),
              const SizedBox(height: 7),
              CustomSlideTransition(
                offset: Tween<Offset>(
                  begin: const Offset(-0.1, 0.0),
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
                      style: TextStyleUtils.regular(Constants.supperTitleSize)
                          .copyWith(color: ColorUtils.transparent07),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'ECR VIETNAM CO., LTD',
                        style: TextStyleUtils.bold(Constants.subheaderSize)
                            .copyWith(color: ColorUtils.lightBlue),
                        children: [
                          TextSpan(
                            text: ', Mobile developer',
                            style: TextStyleUtils.bold(Constants.subheaderSize)
                                .copyWith(color: ColorUtils.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(
                        'I’ve worked on a wide variety of internal tools for ecr over the past 2 years.',
                        style: TextStyleUtils.regular(Constants.descriptionSize)
                            .copyWith(color: ColorUtils.transparent07),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Text(
                      'Main responsibilities:',
                      style: TextStyleUtils.bold(Constants.descriptionSize)
                          .copyWith(color: ColorUtils.transparent07),
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• Design and implement code base within the technical requirement',
                            style: TextStyleUtils.regular(
                                    Constants.descriptionSize)
                                .copyWith(color: ColorUtils.transparent07),
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            '• Maintain code',
                            style: TextStyleUtils.regular(
                                    Constants.descriptionSize)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            '• Work with the client to solve problems and tech requirements - Research technology to apply to application',
                            style: TextStyleUtils.regular(
                                    Constants.descriptionSize)
                                .copyWith(color: ColorUtils.transparent07),
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              CustomSlideTransition(
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
                      style: TextStyleUtils.regular(Constants.supperTitleSize)
                          .copyWith(color: ColorUtils.transparent07),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Huflit',
                        style: TextStyleUtils.bold(Constants.subheaderSize)
                            .copyWith(color: ColorUtils.green),
                        children: [
                          TextSpan(
                            text: ', Mobile Developer Fresher',
                            style: TextStyleUtils.bold(Constants.subheaderSize)
                                .copyWith(color: ColorUtils.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(
                        'I started my developer career with HUFLIT and CSIRO, I was in charge of creating an android application',
                        style: TextStyleUtils.regular(Constants.descriptionSize)
                            .copyWith(color: ColorUtils.transparent07),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Text(
                      'Main responsibilities:',
                      style: TextStyleUtils.bold(Constants.descriptionSize)
                          .copyWith(color: ColorUtils.transparent07),
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• Research and development of CSI system under the management of HUFLIT and CSIRO ',
                            style: TextStyleUtils.regular(
                                    Constants.descriptionSize)
                                .copyWith(color: ColorUtils.transparent07),
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            '• Research and development of location identification system by bluetooth.',
                            style: TextStyleUtils.regular(
                                    Constants.descriptionSize)
                                .copyWith(color: ColorUtils.transparent07),
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        tablet: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WORK EXPERIENCE',
                style: TextStyleUtils.regular(Constants.titleSize)
                    .copyWith(color: ColorUtils.transparent07),
              ),
              const SizedBox(height: 7),
              Text(
                'Companies I have worked \nfor in the past.',
                style: TextStyleUtils.bold(Constants.subtitleSize)
                    .copyWith(color: ColorUtils.white),
              ),
              const SizedBox(height: 7),
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
                            style: TextStyleUtils.regular(
                                    Constants.supperTitleSize)
                                .copyWith(color: ColorUtils.transparent07),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'ECR VIETNAM CO., LTD',
                              style: TextStyleUtils.bold(Constants.headerSize)
                                  .copyWith(color: ColorUtils.lightBlue),
                              children: [
                                TextSpan(
                                  text: ', Mobile developer',
                                  style:
                                      TextStyleUtils.bold(Constants.headerSize)
                                          .copyWith(color: ColorUtils.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              'I’ve worked on a wide variety of internal tools for ecr over the past 2 years.',
                              style: TextStyleUtils.regular(
                                      Constants.subheaderSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Text(
                            'Main responsibilities:',
                            style: TextStyleUtils.bold(Constants.subheaderSize)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Design and implement code base within the technical requirement',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Maintain code',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Work with the client to solve problems and tech requirements - Research technology to apply to application',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
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
                            style: TextStyleUtils.regular(
                                    Constants.supperTitleSize)
                                .copyWith(color: ColorUtils.transparent07),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Huflit',
                              style: TextStyleUtils.bold(Constants.headerSize)
                                  .copyWith(color: ColorUtils.green),
                              children: [
                                TextSpan(
                                  text: ', Mobile Developer Fresher',
                                  style:
                                      TextStyleUtils.bold(Constants.headerSize)
                                          .copyWith(color: ColorUtils.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              'I started my developer career with HUFLIT and CSIRO, I was in charge of creating an android application',
                              style: TextStyleUtils.regular(
                                      Constants.subheaderSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Text(
                            'Main responsibilities:',
                            style: TextStyleUtils.bold(Constants.subheaderSize)
                                .copyWith(color: ColorUtils.transparent07),
                            overflow: TextOverflow.fade,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Research and development of CSI system under the management of HUFLIT and CSIRO ',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Research and development of location identification system by bluetooth.',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
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
        ),
        desktop: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WORK EXPERIENCE',
                style: TextStyleUtils.regular(Constants.titleSize)
                    .copyWith(color: ColorUtils.transparent07),
              ),
              const SizedBox(height: 7),
              Text(
                'Companies I have worked \nfor in the past.',
                style: TextStyleUtils.bold(Constants.subtitleSize)
                    .copyWith(color: ColorUtils.white),
              ),
              const SizedBox(height: 7),
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
                            style: TextStyleUtils.regular(
                                    Constants.supperTitleSize)
                                .copyWith(color: ColorUtils.transparent07),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'ECR VIETNAM CO., LTD',
                              style: TextStyleUtils.bold(Constants.headerSize)
                                  .copyWith(color: ColorUtils.lightBlue),
                              children: [
                                TextSpan(
                                  text: ', Mobile developer',
                                  style:
                                      TextStyleUtils.bold(Constants.headerSize)
                                          .copyWith(color: ColorUtils.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              'I’ve worked on a wide variety of internal tools for ecr over the past 2 years.',
                              style: TextStyleUtils.regular(
                                      Constants.subheaderSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Text(
                            'Main responsibilities:',
                            style: TextStyleUtils.bold(Constants.subheaderSize)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Design and implement code base within the technical requirement',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Maintain code',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              maxLines: 3,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Work with the client to solve problems and tech requirements - Research technology to apply to application',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
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
                            style: TextStyleUtils.regular(
                                    Constants.supperTitleSize)
                                .copyWith(color: ColorUtils.transparent07),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Huflit',
                              style: TextStyleUtils.bold(Constants.headerSize)
                                  .copyWith(color: ColorUtils.green),
                              children: [
                                TextSpan(
                                  text: ', Mobile Developer Fresher',
                                  style:
                                      TextStyleUtils.bold(Constants.headerSize)
                                          .copyWith(color: ColorUtils.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              'I started my developer career with HUFLIT and CSIRO, I was in charge of creating an android application',
                              style: TextStyleUtils.regular(
                                      Constants.subheaderSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Text(
                            'Main responsibilities:',
                            style: TextStyleUtils.bold(Constants.subheaderSize)
                                .copyWith(color: ColorUtils.transparent07),
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Research and development of CSI system under the management of HUFLIT and CSIRO ',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              '• Research and development of location identification system by bluetooth.',
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
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
        ),
      ),
    );
  }
}
