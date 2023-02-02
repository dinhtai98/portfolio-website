part of '../wrapper_page.dart';

class _DropdownWidget extends StatefulWidget {
  const _DropdownWidget();

  @override
  State<_DropdownWidget> createState() => __DropdownWidgetState();
}

class __DropdownWidgetState extends State<_DropdownWidget> {
  var links = <String>['Experience', 'Work', 'Photography', 'Contact'];
  String selectedLinks = 'Experience';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        items: links.map((String val) {
          return DropdownMenuItem<String>(
            value: val,
            child: _OnHover(
              builder: (isHovered) {
                return Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(val));
              },
            ),
          );
        }).toList(),
        icon: Icon(
          Icons.menu,
          size: 30,
          color: ColorUtils.transparent07,
        ),
        dropdownColor: ColorUtils.background,
        style: TextStyleUtils.regular(16)
            .copyWith(color: ColorUtils.transparent07),
        value: selectedLinks,
        alignment: AlignmentDirectional.centerStart,
        onChanged: (String? val) {
          setState(() {
            selectedLinks = val!;
          });
        },
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
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
