import 'package:flutter/material.dart';
import 'package:is_it_safe/utils/helpers/helpers.dart';

class BasicButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final Color? color;

  BasicButton({
    Key? key,
    required this.text,
    this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 18, 0, 18),
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Helpers.getColorFromTheme(
                context: context,
                darkModeColor: Theme.of(context).accentColor.withOpacity(0.2),
                lightModeColor: Theme.of(context).accentColor,
              ),
              offset: Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ],
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: Theme.of(context).textTheme.button!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
          ),
        ),
      ),
    );
  }
}
