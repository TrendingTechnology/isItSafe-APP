import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:is_it_safe/generated/l10n.dart';
import 'package:is_it_safe/pages/login_page.dart';
import 'package:is_it_safe/utils/config/custom_shared_preferences.dart';
import 'package:is_it_safe/utils/style/colors.dart';

class OnBoardingPageTemplate extends StatelessWidget {
  final String? imagePath;
  final RichText? text;
  final bool? haveButton;
  final Widget? button;
  const OnBoardingPageTemplate({
    Key? key,
    this.imagePath,
    this.text,
    this.button,
    this.haveButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey[800]!,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.grey[900]!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: IconButton(
                      icon: IconTheme(
                        data: Theme.of(context).iconTheme,
                        child: Icon(
                          Icons.close,
                        ),
                      ),
                      onPressed: () async {
                        await CustomSharedPreferences.saveUsuarioOnBoarding(
                            true);
                        Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                          (route) => false,
                        );
                      },
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 72),
                  child: text,
                ),
                if (haveButton!)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 64),
                    child: GestureDetector(
                      onTap: () async {
                        await CustomSharedPreferences.saveUsuarioOnBoarding(
                            true);
                        Navigator.of(context).pushReplacement(
                          CupertinoPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 64, right: 64),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: whiteColor,
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            S.of(context)!.textLogin,
                            style: Theme.of(context).textTheme.subtitle1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
