part of '../wrapper_page.dart';

class _WrapperWidget extends StatelessWidget {
  const _WrapperWidget();

  @override
  Widget build(BuildContext context) {
    var baseDuration = const Duration(milliseconds: 600);
    var descriptionDuration = const Duration(milliseconds: 300);
    return Responsive(
      mobile: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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
                  opacity: const AlwaysStoppedAnimation(.8),
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
                    "I'm Dinh Tai. \nA Mobile Developer",
                    style: TextStyleUtils.bold(40)
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
                    style: TextStyleUtils.bold(40)
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
                    "I'm a software developer having 2 years of experience in creating single-page applications using technologies such as Flutter, WPF. I'm your guy",
                    style: TextStyleUtils.regular(20)
                        .copyWith(color: ColorUtils.white),
                  ),
                ),
                const SizedBox(height: 20),
                CustomSlideTransition(
                  offset: Tween<Offset>(
                    begin: const Offset(1, 0.0),
                    end: const Offset(0.0, 0.0),
                  ),
                  animationDuration: baseDuration + descriptionDuration * 2,
                  child: CustomButton(
                    name: 'CV PDF',
                    onPressed: () => downloadFile(
                        'https://drive.google.com/file/d/1eYL_qL2BRM8ZuX1QCaaO9Xszs9oOfLvT/view?usp=sharing'),
                    backgroundColor: ColorUtils.transparent,
                    textColor: ColorUtils.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      tablet: Padding(
        padding: const EdgeInsets.all(30),
        child: Stack(
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
                  width: 680,
                  height: 680,
                  fit: BoxFit.fill,
                  opacity: const AlwaysStoppedAnimation(.8),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 650, top: 60),
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
                      "I'm Dinh Tai. \nA Mobile Developer",
                      style: TextStyleUtils.bold(50)
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
                      style: TextStyleUtils.bold(50)
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
                      "I'm a software developer having 2 years of experience in creating single-page applications using technologies such as Flutter, WPF. I'm your guy",
                      style: TextStyleUtils.regular(30)
                          .copyWith(color: ColorUtils.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomSlideTransition(
                    offset: Tween<Offset>(
                      begin: const Offset(1, 0.0),
                      end: const Offset(0.0, 0.0),
                    ),
                    animationDuration: baseDuration + descriptionDuration * 2,
                    child: CustomButton(
                      name: 'CV PDF',
                      onPressed: () => downloadFile(
                          'https://drive.google.com/file/d/1eYL_qL2BRM8ZuX1QCaaO9Xszs9oOfLvT/view?usp=sharing'),
                      backgroundColor: ColorUtils.transparent,
                      textColor: ColorUtils.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      desktop: Padding(
        padding: const EdgeInsets.all(50),
        child: Stack(
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
                  width: 700,
                  height: 700,
                  fit: BoxFit.fill,
                  opacity: const AlwaysStoppedAnimation(.8),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 650, top: 60),
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
                      "I'm Dinh Tai. \nA Mobile Developer",
                      style: TextStyleUtils.bold(70)
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
                      style: TextStyleUtils.bold(70)
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
                      "I'm a software developer having 2 years of experience in creating single-page applications using technologies such as Flutter, WPF. I'm your guy",
                      style: TextStyleUtils.regular(40)
                          .copyWith(color: ColorUtils.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomSlideTransition(
                    offset: Tween<Offset>(
                      begin: const Offset(1, 0.0),
                      end: const Offset(0.0, 0.0),
                    ),
                    animationDuration: baseDuration + descriptionDuration * 2,
                    child: CustomButton(
                      name: 'CV PDF',
                      onPressed: () => downloadFile(
                          'https://drive.google.com/file/d/1eYL_qL2BRM8ZuX1QCaaO9Xszs9oOfLvT/view?usp=sharing'),
                      backgroundColor: ColorUtils.transparent,
                      textColor: ColorUtils.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DownloadButton extends StatefulWidget {
  const DownloadButton({super.key});

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void downloadFile(url) {
  html.window.open(url, "_blank");
}
