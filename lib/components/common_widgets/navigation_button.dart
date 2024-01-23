import 'package:portfolio/core/core_export.dart';


class NavigationButton extends StatefulWidget {
  final int? buttonIndex;
  final IconData? icon;
  final String? buttonName;
  const NavigationButton({
    super.key,
    required this.icon,
    required this.buttonName,
    required this.buttonIndex
  });

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {

  bool isHovered = false;
  NavigationController navigationController = Get.find();


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (navigationController) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) => _onHover(true),
          onExit: (_) => _onHover(false),
          child: InkWell(
            onTap: (){
              navigationController.setCurrentScreenIndex(widget.buttonIndex!);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.fastOutSlowIn,
              width: isHovered ? 110 : 55,
              decoration: BoxDecoration(
                color: widget.buttonIndex == navigationController.getCurrentScreenIndex() ? Colors.black :  isHovered ? Colors.black : Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(Dimensions.radiusSizeEvenMoreLarge),
              ),
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.paddingSizeMedium),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Icon(widget.icon, color: Colors.white,size: 26,),
                      isHovered ? const SizedBox(width: Dimensions.paddingSizeSmall): SizedBox(),


                      isHovered? Expanded(
                        child: Text(widget.buttonName!,style: const TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 18,
                            fontFamily: "Ubuntu"
                        ),),
                      ): const SizedBox(),

                    ]),
              ),
            ),
          ),
        );
      }
    );
  }
  void _onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}