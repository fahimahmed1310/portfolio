import 'package:portfolio/core/core_export.dart';
import 'package:portfolio/utils/styles.dart';

class HomePageText extends StatelessWidget {
  final String text;
  final int maxTextLine;
  final String textSubject;

  const HomePageText(
      {super.key,
      required this.text,
      required this.maxTextLine,
      required this.textSubject});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: textSubject == 'greetings'
          ? Text(
              text,
              maxLines: maxTextLine,
              overflow: TextOverflow.fade,
              style: Styles.textRegular.copyWith(fontSize: 25),
            )
          : textSubject == 'myName'
              ? Text(
                  text,
                  textAlign: TextAlign.end,
                  maxLines: maxTextLine,
                  overflow: TextOverflow.fade,
                  style: Styles.textBold.copyWith(
                    fontSize: 60,
                  ),
                )
              : Text(text,
                  maxLines: maxTextLine,
                  overflow: TextOverflow.fade,
                  style: Styles.textRegular.copyWith(fontSize: 30)),
    );
  }
}
