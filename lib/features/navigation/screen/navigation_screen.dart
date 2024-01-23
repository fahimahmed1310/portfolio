import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/core_export.dart';
import 'package:portfolio/features/home/screen/home_screen.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> with SingleTickerProviderStateMixin{
  bool isHovered = false;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<Widget> getScreens = [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (navigationController) {
        return Scaffold(
          body: SafeArea(
            child: Stack(children: [


                PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return getScreens[index];
                  },

                  onPageChanged: (index){
                    navigationController.setCurrentScreenIndex(index);
                  },
                ),


                Positioned(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: MediaQuery.of(context).size.width * 0.02,
                  child: const NavigationButton(
                    buttonIndex: 0,
                    icon: Icons.home,
                    buttonName: 'Home',
                  ),
                ),


                Positioned(
                  top: MediaQuery.of(context).size.height * 0.46,
                  left: MediaQuery.of(context).size.width * 0.02,
                  child: const NavigationButton(
                    buttonIndex: 1,
                    icon: Icons.person,
                    buttonName: 'Person',
                  ),
                ),


                Positioned(
                  top: MediaQuery.of(context).size.height * 0.52,
                  left: MediaQuery.of(context).size.width * 0.02,
                  child: const NavigationButton(
                    buttonIndex: 2,
                    icon: FontAwesomeIcons.file,
                    buttonName: 'CV',
                  ),
                ),


                Positioned(
                  top: MediaQuery.of(context).size.height * 0.58,
                  left: MediaQuery.of(context).size.width * 0.02,
                  child: const NavigationButton(
                    buttonIndex: 3,
                    icon: Icons.person,
                    buttonName: 'Person',
                  ),
                ),


              ],),
          ),
        );
      }
    );
  }



}


