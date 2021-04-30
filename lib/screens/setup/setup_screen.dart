import 'package:clinicapp/constants.dart';
import 'package:clinicapp/styles/input_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var viewport = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: viewport.width,
        height: viewport.height,
        color: opHighlightDarken,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/odontopro.svg",
              color: opWashedWhite,
              height: viewport.height / 12,
            ),
            SizedBox(
              height: opSpacing / 2,
            ),
            RichText(
              text: TextSpan(
                text: 'Odonto',
                style: TextStyle(
                  fontSize: 26,
                ),
                children: [
                  TextSpan(
                    text: 'Pro',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: opSpacing,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: opSpacing / 2,
                horizontal: opSpacing * 2,
              ),
              decoration: InputStyles.loginInputWrapper,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: opWashedWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputStyles.loginField.copyWith(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    color: opWashedWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: opSpacing / 2,
                horizontal: opSpacing * 2,
              ),
              decoration: InputStyles.loginInputWrapper,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                style: TextStyle(
                  color: opWashedWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputStyles.loginField.copyWith(
                  hintText: 'Senha',
                  hintStyle: TextStyle(
                    color: opWashedWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: opSpacing / 2,
            ),
            Observer(builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: opSpacing * 2),
                child: Row(
                  children: [
                    Container(
                      width: viewport.width / 3,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: opSpacing / 2,
                            horizontal: opSpacing,
                          ),
                          decoration: BoxDecoration(
                            color: opHighlight,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                opSpacing,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'ENTRAR',
                              style: TextStyle(
                                color: opWashedWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
