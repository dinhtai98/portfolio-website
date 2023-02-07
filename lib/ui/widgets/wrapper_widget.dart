part of '../wrapper_page.dart';

class _WrapperWidget extends StatelessWidget {
  const _WrapperWidget();

  @override
  Widget build(BuildContext context) {
    var baseDuration = const Duration(milliseconds: 600);
    var descriptionDuration = const Duration(milliseconds: 300);
    if (!locator<GlobalData>().isMobileSize) {
      return Stack(
        children: [
          CustomSlideTransition(
            offset: Tween<Offset>(
              begin: const Offset(-0.3, 0.0),
              end: const Offset(0.0, 0.0),
            ),
            animationDuration: baseDuration,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/avatar.jpg',
                width: 160.sp,
                height: 160.sp,
                fit: BoxFit.fill,
                opacity: const AlwaysStoppedAnimation(.9),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 150.w, top: 40.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSlideTransition(
                  offset: Tween<Offset>(
                    begin: const Offset(1, 0.0),
                    end: const Offset(0.0, 0.0),
                  ),
                  animationDuration: baseDuration,
                  child: Text(
                    "I'm Dinh Tai. \nA Device Developer",
                    style: TextStyleUtils.bold(16.sp)
                        .copyWith(color: ColorUtils.white),
                  ),
                ),
                CustomSlideTransition(
                  offset: Tween<Offset>(
                    begin: const Offset(1, 0.0),
                    end: const Offset(0.0, 0.0),
                  ),
                  animationDuration: baseDuration,
                  child: Text(
                    'based in Ho Chi Minh.',
                    style: TextStyleUtils.bold(16.sp)
                        .copyWith(color: ColorUtils.transparent07),
                  ),
                ),
                const SizedBox(height: 20),
                CustomSlideTransition(
                  offset: Tween<Offset>(
                    begin: const Offset(1, 0.0),
                    end: const Offset(0.0, 0.0),
                  ),
                  animationDuration: baseDuration + descriptionDuration,
                  child: Text(
                    "I'm a software developer having 2 years experience in creating single-page applications using technologies such as Flutter, WPF. I'm your guy",
                    style: TextStyleUtils.regular(8.sp)
                        .copyWith(color: ColorUtils.white),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomSlideTransition(
            offset: Tween<Offset>(
              begin: const Offset(-0.3, 0.0),
              end: const Offset(0.0, 0.0),
            ),
            animationDuration: baseDuration,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/avatar.jpg',
                fit: BoxFit.cover,
                opacity: const AlwaysStoppedAnimation(.9),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSlideTransition(
                offset: Tween<Offset>(
                  begin: const Offset(1, 0.0),
                  end: const Offset(0.0, 0.0),
                ),
                animationDuration: baseDuration,
                child: Text(
                  "I'm Dinh Tai. \nA Device Developer",
                  style: TextStyleUtils.bold(16.sp)
                      .copyWith(color: ColorUtils.white),
                ),
              ),
              CustomSlideTransition(
                offset: Tween<Offset>(
                  begin: const Offset(1, 0.0),
                  end: const Offset(0.0, 0.0),
                ),
                animationDuration: baseDuration,
                child: Text(
                  'based in Ho Chi Minh.',
                  style: TextStyleUtils.bold(16.sp)
                      .copyWith(color: ColorUtils.transparent07),
                ),
              ),
              const SizedBox(height: 20),
              CustomSlideTransition(
                offset: Tween<Offset>(
                  begin: const Offset(1, 0.0),
                  end: const Offset(0.0, 0.0),
                ),
                animationDuration: baseDuration + descriptionDuration,
                child: Text(
                  "I'm a software developer having 2 years experience in creating single-page applications using technologies such as Flutter, WPF. I'm your guy",
                  style: TextStyleUtils.regular(12.sp)
                      .copyWith(color: ColorUtils.white),
                ),
              )
            ],
          ),
        ],
      );
    }
  }
}