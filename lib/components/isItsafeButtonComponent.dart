import 'package:flutter/material.dart';
import 'package:is_it_safe/utils/style/colors.dart';

class IsItSafeButtonComponent extends StatelessWidget {
  final String buttonText;
  final Function buttonFunction;
  final Color? color;
  final bool whiteFont;

  IsItSafeButtonComponent(
      {Key? key,
      required this.buttonText,
      required this.buttonFunction,
      required this.whiteFont,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => buttonFunction(),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color ?? backgroundContainerColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: accentColor.withOpacity(0.2),
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 2)
          ],
        ),
        child: Center(
          child: Text(
            buttonText,
            style: whiteFont
                ? Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: whiteColor)
                : Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: accentColor),
          ),
        ),
      ),
    );
  }
}
