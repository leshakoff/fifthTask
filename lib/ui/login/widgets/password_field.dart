import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_styles.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    this.onSaved,
  }) : super(key: key);

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.s16w400.copyWith(
        color: AppColors.mainText,
      ),
      obscureText: true,
      obscuringCharacter: '・',
      decoration: InputDecoration(
        hintText: S.of(context).password,
        hintStyle: AppStyles.s16w400.copyWith(
          color: AppColors.neutral2,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: SvgPicture.asset(
            AppAssets.svg.password,
            width: 16.0,
            color: AppColors.neutral2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        filled: true,
        fillColor: AppColors.neutral1,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        counterText: '',
      ),
      maxLength: 16,
      validator: (value) {
        if (value == null) return S.of(context).inputErrorEmptyPassword;
        if (value.length < 8) {
          return S.of(context).inputErrorPasswordIsShort;
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
