part of '../../home_page.dart';

class _DropdownWidget extends StatefulWidget {
  const _DropdownWidget();

  @override
  State<_DropdownWidget> createState() => __DropdownWidgetState();
}

class __DropdownWidgetState extends State<_DropdownWidget> {
  var links = <Pages>[
    Pages.info,
    Pages.workExperience,
    Pages.skillset,
    Pages.myDemoProjects,
    Pages.aboutMe,
  ];
  Pages selectedLinks = Pages.info;
  final CustomPopupMenuController _controller = CustomPopupMenuController();
  @override
  Widget build(BuildContext context) {
    return CustomPopupMenu(
      menuBuilder: () {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(color: ColorUtils.darkBackground),
              borderRadius: BorderRadius.circular(15),
              color: ColorUtils.darkBackground),
          child: Column(
            children: [
              ...links.map((e) {
                var title = EnumHelper.getDescription(EnumMap.enumPages, e);
                return InkWell(
                  onTap: () {
                    _controller.hideMenu();
                    locator<GlobalData>().scrollTo(e);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      title!,
                      style: TextStyleUtils.regular(16)
                          .copyWith(color: ColorUtils.transparent07),
                    ),
                  ),
                );
              })
            ],
          ),
        );
      },
      pressType: PressType.singleClick,
      verticalMargin: 0,
      controller: _controller,
      child: Icon(
        Icons.menu,
        color: ColorUtils.transparent07,
      ),
    );
  }
}

class _OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const _OnHover({required this.builder});

  @override
  State<_OnHover> createState() => __OnHoverState();
}

class __OnHoverState extends State<_OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(10, 0, 0);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
