import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_bank/common/styles/app_colors.dart';

class ReusableTextInput extends StatefulWidget {
   const ReusableTextInput({
    this.upperText,
    this.hintText,
    this.textColor = AppColors.black,
    this.upperTextColor = AppColors.black,
    this.hintColor = AppColors.black,
    this.controller,
    this.textInputType = TextInputType.text,
    this.mask,
    this.padding,
     this.validator,
    this.textCapitalization = TextCapitalization.none,
    this.onSubmited,
    this.focusNode,
    this.onPressedIcon,
    this.icon,
    this.autofocus = false,
    this.readOnly = false,
    this.obscureText = false,
    this.onChanged,
    this.maxLength,
    this.prefix,
    this.margin,
    this.iconSize,
    this.contentPadding,
    this.initialValue,
    Key? key,
  }) : super(key: key);

  final String? upperText;
  final String? hintText;
  final String? prefix;
  final Color? textColor;
  final Color? upperTextColor;
  final Color? hintColor;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? mask;
  final double? padding;
  final EdgeInsets? margin;
  final Function(String value, String fieldName, FocusNode focusNode)? validator;
  final Function? onSubmited, onChanged;
  final TextCapitalization? textCapitalization;
  final FocusNode? focusNode;
  final bool autofocus, readOnly;
  final Function? onPressedIcon;
  final IconData? icon;
  final bool obscureText;
  final int? maxLength;
  final double? iconSize;
  final EdgeInsets? contentPadding;
  final String? initialValue;


  @override
  _ReusableTextInputState createState() => _ReusableTextInputState();
}

class _ReusableTextInputState extends State<ReusableTextInput> {
  late bool isEmpty = false, isValid = false;
  List<TextInputFormatter>? mask;
  TextEditingController? controller;
  bool get hasErrors => true;
  FocusNode? focusNode;

  @override
  void initState() {
    super.initState();
    controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);
    isEmpty = (controller?.text ?? '').isEmpty;
    mask = widget.mask;
    if (widget.textInputType == TextInputType.number && (mask ?? []).isEmpty) {
      mask = [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        FilteringTextInputFormatter.deny(RegExp(r'^0+'))
      ];
    }
    focusNode = widget.focusNode ?? FocusNode();
    if (widget.autofocus) focusNode?.requestFocus();
    controller?.addListener(() {
      updateState(controller?.text);
    });
  }

  @override
  void dispose() {
    controller?.removeListener(() {
      updateState(controller?.text);
    });
    super.dispose();
  }

  void updateState(value) {
    if (widget.validator == null) {
      isValid = true;
    } else {
      isValid = widget.validator!(value, widget.upperText ?? '', focusNode!) == null;
    }
    isEmpty = controller!.text.isEmpty;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.margin ??
          EdgeInsets.symmetric(
              horizontal: widget.padding  ?? 24.0),
      child: Stack(
        children: [
          Theme(
            data: ThemeData(
              inputDecorationTheme: const InputDecorationTheme(
                // hintStyle: GoogleFonts.inter(
                //   color: Styles.secondBlack,
                //   fontSize: 14.sp,
                //   fontWeight: FontWeight.w400,
                // ),
                // labelStyle: GoogleFonts.inter(
                //   color: Styles.secondBlack,
                //   fontSize: 14.sp,
                //   fontWeight: FontWeight.w400,
                // ),
              ),
            ),
            child: TextFormField(
              scrollPadding: const EdgeInsets.only(top: 40, bottom: 20),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: widget.obscureText,
              focusNode: focusNode,
              autofocus: widget.autofocus,
              validator: (value) {
                if (widget.validator == null) {
                  return null;
                } else {
                  return widget.validator!(value ?? '', widget.upperText ?? '', focusNode!);
                }
              },
              onChanged: (value) {
                updateState(value);
                (widget.onChanged ?? (_) {}).call(value);
              },
              onEditingComplete: () => setState(() {}),
              onSaved: updateState,
              // onFieldSubmitted: widget.onSubmited ?? updateState,
              inputFormatters: mask,
              controller: controller,
              keyboardType: widget.textInputType,
              readOnly: widget.readOnly,
              maxLength: widget.maxLength ?? 10,
              // style: GoogleFonts.inter(
              //   color: widget.textColor,
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w400,
              //   height: 1.5,
              // ),
              textCapitalization: widget.textCapitalization!,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                contentPadding: widget.contentPadding ??
                    const EdgeInsets.fromLTRB(32, 27, 0, 12),
                counterText: "",
                prefixText: widget.prefix,
                isDense: true,
                hintText: widget.hintText ?? '',
                suffixIcon: Container(
                  width: 110,
                  padding: const EdgeInsets.only(right: 5.75),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Visibility(
                        visible: !isEmpty,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 6),
                          // child: IconButton(
                          //   onPressed: () {
                          //     controller?.clear();
                          //     if (widget.onChanged != null)
                          //       widget.onChanged(controller?.text);
                          //   },
                          //   splashRadius: 24.w,
                          //   // icon: Icon(
                          //   //   CustomIcons.error,
                          //   //   color: Styles.secondBlack,
                          //   //   size: 15.5.w,
                          //   // ),
                          // ),
                        ),
                      ),
                      // widget.icon == null
                      //     ? SizedBox.shrink()
                      //     : CircleButton.bordered(
                      //   icon: widget.icon,
                      //   iconSize: widget.iconSize ?? 20.w,
                      //   onPressed: () async {
                      //     if (widget.onPressedIcon == null)
                      //       focusNode.requestFocus();
                      //     else {
                      //       focusNode.unfocus();
                      //       focusNode.canRequestFocus = false;
                      //       await widget.onPressedIcon();
                      //       Future.delayed(Duration(milliseconds: 100),
                      //               () {
                      //             focusNode.canRequestFocus = true;
                      //           });
                      //     }
                      //   },
                      //   borderColor: isValid == null || isEmpty
                      //       ? focusNode.hasFocus
                      //       ? Styles.mainColor
                      //       : Styles.borderNew
                      //       : isValid
                      //       ? Styles.green
                      //       : Styles.red,
                      //   iconColor: isValid == null || isEmpty
                      //       ? Styles.mainColor
                      //       : isValid
                      //       ? Styles.green
                      //       : Styles.red,
                      // ),
                    ],
                  ),
                ),
                focusColor: AppColors.primary400,
                // hintStyle: GoogleFonts.inter(
                //   color: widget.hintColor,
                //   decorationColor: Styles.secondBlack,
                //   fontSize: 14.sp,
                //   fontWeight: FontWeight.w400,
                // ),
                // labelStyle: GoogleFonts.inter(
                //   color: Styles.secondBlack,
                //   fontSize: 14.sp,
                //   fontWeight: FontWeight.w400,
                // ),
                errorMaxLines: 2,
                enabledBorder: getBorder(
                    color: isValid == true ? AppColors.success500 : AppColors.error500),
                errorBorder: getBorder(color: AppColors.error500),
                // errorStyle: GoogleFonts.inter(
                //   color: Styles.red,
                //   fontSize: 10.sp,
                //   fontWeight: FontWeight.w400,
                // ),
                focusedErrorBorder: getBorder(color: AppColors.primary400),
                focusedBorder: getBorder(
                    color: isValid == true ? AppColors.success500 : AppColors.error500),
                border: getBorder(
                    color: isValid == true ? AppColors.success500 : AppColors.error500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 12, 0, 0),
            child: Text(
              widget.upperText ?? '',
              // style: GoogleFonts.inter(
              //   fontWeight: FontWeight.w400,
              //   color: widget.upperTextColor,
              //   height: 1,
              //   fontSize: 12.sp,
              // ),
            ),
          ),
        ],
      ),
    );
  }

  InputBorder getBorder({Color? color}) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
      width: 1,
      color: color ?? AppColors.success500,
    ),
  );
}