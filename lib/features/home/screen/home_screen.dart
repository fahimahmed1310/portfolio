import 'package:portfolio/core/core_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [


        Expanded(flex: 2,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [


            const SizedBox(width: Dimensions.paddingSizeLargest,),
            Expanded(flex: 6,
              child: Row(children: [


                Text(AppConstants.websiteInfo, style: Styles.textBold.copyWith(fontSize: 12),),

              ]),
            ),


            const Expanded(flex: 2,
              child: Row(children: [


                Flexible(child: Icon(
                        FontAwesomeIcons.facebookF,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: Dimensions.paddingSizeFifty,),

                    Flexible(
                      child: Icon(
                        FontAwesomeIcons.linkedinIn,
                        size: 30,
                      ),
                    ),
                      SizedBox(width: Dimensions.paddingSizeFifty,),

                    Flexible(
                      fit: FlexFit.loose,
                      child: Icon(
                        FontAwesomeIcons.github,
                        size: 30,
                      ),
                    ),
                      SizedBox(width: Dimensions.paddingSizeFifty,),

                  ],),
                ),

              ],),
          ),
          const SizedBox(height: Dimensions.paddingSizeLarge),


          const Expanded(flex: 4,child: SizedBox(),),
          const Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(
                  child: SizedBox(),
                ),

                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      HomePageText(
                          text: AppConstants.greetings,
                          maxTextLine: 1,
                          textSubject: 'greetings'
                      ),

                      HomePageText(
                          text: AppConstants.myName,
                          maxTextLine: 2,
                          textSubject: 'myName'
                      ),

                      HomePageText(
                          text: AppConstants.designation,
                          maxTextLine: 1,
                          textSubject: 'designation'
                      ),

                  ],),
                ),
                SizedBox(width: Dimensions.paddingSizeLargest),

                Expanded(
                  child: CircleAvatar(
                  radius: 182,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 178,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 170,
                      backgroundImage: AssetImage(
                        Images.myImage
                      ),
                    ),
                  ),
                                ),
                ),

                Expanded(
                  child: SizedBox(),
                ),

            ],),
          ),

          const Expanded(flex: 6,child: SizedBox(),),


        ],
      ),
    );
  }
}
