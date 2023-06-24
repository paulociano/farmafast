import 'package:farmafast/buttons/imgsource_delegate.dart';
import 'package:flutter/material.dart';

class ImgSourceButton extends StatefulWidget {
  const ImgSourceButton({
    super.key,
  });
  @override
  State<ImgSourceButton> createState() => _ImgSourceButtonState();
}

class _ImgSourceButtonState extends State<ImgSourceButton>
    with SingleTickerProviderStateMixin {
  final actionButtonColor = Colors.white;
  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: ImgSourceDelegate(animation: animation),
      children: [
        FloatingActionButton(
            heroTag: "btnaddimg",
            onPressed: () {
              toggleMenu();
            },
            backgroundColor: const Color.fromARGB(255, 206, 0, 49),
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: animation,
            )),
        FloatingActionButton(
            heroTag: "btnimgpick",
            onPressed: () {},
            backgroundColor: actionButtonColor,
            child: const Icon(
              Icons.attach_file,
              color: Color.fromARGB(255, 206, 0, 49),
            )),
        FloatingActionButton(
            heroTag: "btnimgcam",
            onPressed: () {},
            backgroundColor: actionButtonColor,
            child: const Icon(Icons.camera_alt,
                color: Color.fromARGB(255, 206, 0, 49))),
      ],
    );
  }
}
