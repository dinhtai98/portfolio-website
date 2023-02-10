import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/custom_animation_builder.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

class TestimonialSectionPage extends StatelessWidget {
  const TestimonialSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build TestimonialSectionPage');
    return Container(
      color: ColorUtils.black,
      child: Responsive(
        mobile: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              _BuildTitleAndDescription(),
              SizedBox(height: 20),
              _BuildListTestimonial(),
            ],
          ),
        ),
        tablet: Container(
          height: 700,
          color: ColorUtils.black,
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Row(
            children: const [
              Expanded(child: _BuildTitleAndDescription()),
              Expanded(child: _BuildListTestimonial()),
            ],
          ),
        ),
        desktop: Container(
          height: 700,
          color: ColorUtils.black,
          padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
          child: Row(
            children: const [
              Expanded(child: _BuildTitleAndDescription()),
              Expanded(child: _BuildListTestimonial()),
            ],
          ),
        ),
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
    return Responsive(
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...models.map(
              (model) => CustomAnimatedBuilder(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorUtils.white)),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 600,
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
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text(
                                  model.description,
                                  style: TextStyleUtils.bold(
                                          Constants.descriptionSize)
                                      .copyWith(color: ColorUtils.white),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      model.name,
                                      style: TextStyleUtils.bold(
                                              Constants.descriptionSize)
                                          .copyWith(
                                              color: ColorUtils.transparent07),
                                    ),
                                    Text(
                                      model.positionOf,
                                      style: TextStyleUtils.regular(
                                              Constants.descriptionSize)
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
              ),
            )
          ],
        ),
        tablet: ListView.builder(
          itemBuilder: (context, index) {
            var model = models[index];
            return CustomAnimatedBuilder(
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: ColorUtils.white)),
                margin: const EdgeInsets.symmetric(vertical: 1),
                height: 500,
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
                        padding: const EdgeInsets.all(2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Text(
                                model.description,
                                style: TextStyleUtils.bold(
                                        Constants.descriptionSize)
                                    .copyWith(color: ColorUtils.white),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    model.name,
                                    style: TextStyleUtils.bold(
                                            Constants.subheaderSize)
                                        .copyWith(
                                            color: ColorUtils.transparent07),
                                  ),
                                  Text(
                                    model.positionOf,
                                    style: TextStyleUtils.regular(
                                            Constants.subheaderSize)
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
        ),
        desktop: ListView.builder(
          itemBuilder: (context, index) {
            var model = models[index];
            return CustomAnimatedBuilder(
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: ColorUtils.white)),
                margin: const EdgeInsets.symmetric(vertical: 1),
                height: 500,
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
                        padding: const EdgeInsets.all(2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Text(
                                model.description,
                                style: TextStyleUtils.bold(
                                        Constants.descriptionSize)
                                    .copyWith(color: ColorUtils.white),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    model.name,
                                    style: TextStyleUtils.bold(
                                            Constants.subheaderSize)
                                        .copyWith(
                                            color: ColorUtils.transparent07),
                                  ),
                                  Text(
                                    model.positionOf,
                                    style: TextStyleUtils.regular(
                                            Constants.subheaderSize)
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
        ));
  }
}

class _BuildTitleAndDescription extends StatelessWidget {
  const _BuildTitleAndDescription();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'This is what people say \nabout me',
          style: TextStyleUtils.bold(Constants.headerSize)
              .copyWith(color: ColorUtils.white),
          maxLines: 2,
        ),
        const SizedBox(height: 10),
        Text(
          'Here are a few lines from people who I have worked with over the past 2+ years in my application development career.',
          style: TextStyleUtils.regular(Constants.descriptionSize)
              .copyWith(color: ColorUtils.transparent07),
          maxLines: 4,
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
