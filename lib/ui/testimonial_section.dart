import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/custom_animation_builder.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

class TestimonialSectionPage extends StatelessWidget {
  const TestimonialSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build TestimonialSectionPage');
    return Container(
      height: 220.sp,
      color: ColorUtils.black,
      padding: EdgeInsets.fromLTRB(15.w, 15.sp, 10.sp, 15.w),
      child: Row(
        children: const [
          Expanded(child: _BuildTitleAndDescription()),
          Expanded(child: _BuildListTestimonial()),
        ],
      ),
    );
  }
}

class _BuildListTestimonial extends StatelessWidget {
  const _BuildListTestimonial();

  @override
  Widget build(BuildContext context) {
    var models = [
      TestimonialModel(
        description: 'data',
        name: 'Phu Le',
        positionOf: 'Team Leader, ECR',
        image: 'assets/images/testimonial_1.jpg',
      ),
      TestimonialModel(
        description: 'data',
        name: 'Mai Chi',
        positionOf: 'Team Leader QC, ECR',
        image: 'assets/images/testimonial_2.jpg',
      ),
    ];
    return ListView.builder(
      itemBuilder: (context, index) {
        var model = models[index];
        return CustomAnimatedBuilder(
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(color: ColorUtils.white)),
            margin: EdgeInsets.symmetric(vertical: 1.sp),
            height: 170.sp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Center(
                    child: Image.asset(
                      model.image,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.all(2.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Text(
                            model.description,
                            style: TextStyleUtils.bold(8.sp)
                                .copyWith(color: ColorUtils.white),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.name,
                                style: TextStyleUtils.bold(6.sp)
                                    .copyWith(color: ColorUtils.transparent07),
                              ),
                              Text(
                                model.positionOf,
                                style: TextStyleUtils.regular(6.sp)
                                    .copyWith(color: ColorUtils.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: models.length,
    );
  }
}

class _BuildTitleAndDescription extends StatelessWidget {
  const _BuildTitleAndDescription();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'This is what people say \nabout me',
          style: TextStyleUtils.bold(10.sp).copyWith(color: ColorUtils.white),
          maxLines: 2,
        ),
        SizedBox(height: 10.sp),
        Text(
          'Here are a few lines from people who I have worked with over the past 2+ years in my application development career.',
          style: TextStyleUtils.regular(7.sp)
              .copyWith(color: ColorUtils.transparent07),
          maxLines: 3,
          overflow: TextOverflow.fade,
        ),
      ],
    );
  }
}

class TestimonialModel {
  final String image;
  final String name;
  final String description;
  final String positionOf;

  TestimonialModel({
    required this.image,
    required this.name,
    required this.description,
    required this.positionOf,
  });
}
