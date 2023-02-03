import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/animation_ease_in.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/custom_button.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

part 'widgets/dropdown_widget.dart';
part 'widgets/wrapper_widget.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({super.key});

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          child: Container(
            width: double.infinity,
            color: ColorUtils.black,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: size.height,
            child: Container(
              width: size.width - 100.w,
              color: ColorUtils.darkBlue,
            ),
          ),
        ),
        Column(
          children: const [
            _NavigationBar(),
            _WrapperWidget(),
          ],
        ),
      ],
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            cacheWidth: 200,
            cacheHeight: 200,
            fit: BoxFit.fill,
          ),
          if (size.width >= Constants.minWidthScale)
            SizedBox(width: size.width - 200.w, child: const _NavLink())
          else
            const _DropdownWidget(),
        ],
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  const _NavLink();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {
              //TODO
            },
            name: 'Experience',
            backgroundColor: ColorUtils.darkBlue,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              //TODO
            },
            name: 'Work',
            backgroundColor: ColorUtils.darkBlue,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              //TODO
            },
            name: 'Photography',
            backgroundColor: ColorUtils.darkBlue,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              //TODO
            },
            name: 'Contact',
            backgroundColor: ColorUtils.blue,
          ),
        )
      ],
    );
  }
}
