import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../basic_features.dart';

class LoginTextField extends StatelessWidget {
  final List<TextInputFormatter>? inputFormatters;
  final String? isdCode;
  final Widget? suffixIcon;

  final String? title;
  final TextEditingController? textController;
  final Color? hintTextColor;
  final FocusNode? focusNode;
  final TextInputType? keyBoardType;

  final ValueChanged? onChanged;
  final ValueChanged? onFieldSubmit;
  final FormFieldValidator? validator;
  final String? hintText;
  final bool showFlag;
  final bool isRoundedCornor;
  final Color? textFieldColor;

  const LoginTextField(
      {super.key,
      this.inputFormatters,
      this.suffixIcon,
      this.focusNode,
      this.isdCode,
      this.title,
      this.validator,
      this.textController,
      this.onFieldSubmit,
      this.hintTextColor,
      this.onChanged,
      this.hintText,
      this.isRoundedCornor = true,
      this.keyBoardType = TextInputType.phone,
      this.showFlag = false,
      this.textFieldColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.h50,
      padding: EdgeInsets.fromLTRB(Dimensions.w16, 0, Dimensions.h12, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.r8),
            topLeft: Radius.circular(Dimensions.r8),
            bottomRight: Radius.circular(isRoundedCornor ? Dimensions.r8 : 0),
            bottomLeft: Radius.circular(isRoundedCornor ? Dimensions.r8 : 0)),
        color: textFieldColor ?? AppColors.textFieldColor,
        border: Border.all(
          color: AppColors.textFieldBorderColor,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              focusNode: focusNode,
              style: fontStyleSemiBold14,
              textAlignVertical: TextAlignVertical.center,
              onFieldSubmitted: onFieldSubmit,
              controller: textController,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.r8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
                fillColor: Colors.transparent,
                filled: true,
                hintText: hintText ?? "",
                hintStyle: fontStyleRegular14.apply(color: AppColors.hintColor),
                suffixIcon: suffixIcon,
              ),
              onChanged: (val) {
                onChanged!(val);
              },
              onSaved: (value) {
                value = textController!.text;
              },
              keyboardType: keyBoardType,
            ),
          ),
        ],
      ),
    );
  }
}
