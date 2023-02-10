import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

class PhilosophyAndValuesPage extends StatelessWidget {
  const PhilosophyAndValuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build PhilosophyAndValuesPage');
    return Container(
      color: ColorUtils.lightBe,
      child: Responsive(
        mobile: Container(
          height: 500,
          color: ColorUtils.lightBe,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Philosophy & values',
                        style: TextStyleUtils.bold(Constants.headerSize)
                            .copyWith(color: ColorUtils.black),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '"Cuộc sống không phải là cuộc chiến cạnh tranh với những người khác, mà là cuộc chạy đua trường kỳ với chính bản thân mình."',
                        style: TextStyleUtils.regular(Constants.descriptionSize)
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
        ),
        tablet: Container(
          height: 450,
          color: ColorUtils.lightBe,
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
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
                        style: TextStyleUtils.bold(Constants.headerSize)
                            .copyWith(color: ColorUtils.black),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        '"Cuộc sống không phải là cuộc chiến cạnh tranh với những người khác, mà là cuộc chạy đua trường kỳ với chính bản thân mình."',
                        style: TextStyleUtils.regular(Constants.subheaderSize)
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
        ),
        desktop: Container(
          height: 450,
          color: ColorUtils.lightBe,
          padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
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
                        style: TextStyleUtils.bold(Constants.headerSize)
                            .copyWith(color: ColorUtils.black),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        '"Cuộc sống không phải là cuộc chiến cạnh tranh với những người khác, mà là cuộc chạy đua trường kỳ với chính bản thân mình."',
                        style: TextStyleUtils.regular(Constants.subheaderSize)
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
        ),
      ),
    );
  }
}
