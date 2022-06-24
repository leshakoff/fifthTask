import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_styles.dart';
import 'package:flutter_application_1/ui/characters_screen/characters_list.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/app_alert_dialog.dart';
import '../../widgets/app_button_styles.dart';
import '/generated/l10n.dart';

import 'widgets/login_field.dart';
import 'widgets/password_field.dart';
// import '/ui/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String? login;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Expanded(
            child: Image.asset(AppAssets.images.logo),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        S.of(context).login,
                        style: AppStyles.s14w400.copyWith(
                          height: 2.0,
                          leadingDistribution: TextLeadingDistribution.even,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      LoginField(
                        onSaved: (login) {
                          this.login = login;
                        },
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        S.of(context).password,
                        style: AppStyles.s14w400.copyWith(
                          height: 2.0,
                          leadingDistribution: TextLeadingDistribution.even,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      PasswordField(
                        onSaved: (value) {
                          password = value;
                        },
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: AppButtonStyles.elevated1,
                              child: Text(S.of(context).signIn),
                              onPressed: () {
                                final isValidated =
                                    formKey.currentState?.validate() ?? false;
                                if (isValidated) {
                                  FocusScope.of(context).unfocus();
                                  formKey.currentState?.save();
                                  if (login == 'qwerty' &&
                                      password == '123456ab') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CharactersList(),
                                      ),
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AppAlertDialog(
                                          title: Text(S.of(context).error),
                                          content: Text(
                                            S.of(context).wrongLoginOrPassword,
                                          ),
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child:
                                Text('${S.of(context).dontHaveAnAccountHint}?'),
                          ),
                          TextButton(
                            style: AppButtonStyles.text1,
                            child: Text(
                              S.of(context).createAccount,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
