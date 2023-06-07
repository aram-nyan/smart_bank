import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/utils/debouncer.dart';
import 'package:smart_bank/common/widgets/input_cubit/input_cubit.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';

class AppTextFieldNew extends StatefulWidget {
  AppTextFieldNew({
    Key? key,
    this.inputFormatters,
    bool obscureText = false,
    this.hintText,
    this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.initial,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.maxLength = 400,
    this.maxLines = 1,
    this.minLines,
    this.isVisibleObscureButton = false,
    EdgeInsetsGeometry? contentPadding,
    this.nextFocus,
    bool enabled = true,
    this.readonly = false,
    this.autofocus = false,
    bool autovalidate = false,
    this.style,
    this.hintStyle = AppTextStyles.body2,
    List<String> Function(String?)? validator,
    this.showErrorMessages = true,
    this.suffixIcon,
    this.onTap,
    this.onFieldSubmitted,
    Duration? debounce,
    this.enabledBorder,
    this.disabledBorder,
    this.focusedBorder,
  })  : contentPadding = contentPadding ??
            const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        super(key: key) {
    controller = TextEditingController(text: initial);
    cubit = InputCubit<String>(
      validator: validator,
      autovalidate: autovalidate,
    );
    _enabled.add(enabled);
    _obscureText.add(obscureText);
    _debounce = Debounce(duration: debounce);
  }

  factory AppTextFieldNew.web({
    Key? key,
    String? hintText,
    String? labelText,
    Widget? prefixIcon,
    EdgeInsetsGeometry? contentPadding = const EdgeInsets.all(20.0),
    int? maxLenght,
    List<String> Function(String?)? validator,
    String? initial,
    Function(String)? onChanged,
    void Function(String)? onFieldSubmitted,
    List<TextInputFormatter>? inputFormatters,
    bool enabled = true,
    bool autofocus = false,
    int? maxLines,
    int? minLines,
    bool showErrorMessages = true,
    Widget? suffixIcon,
    Function(TextEditingController)? onTap,
    TextStyle hintStyle = AppTextStyles.bodyHint,
    Duration? debounce,
    final InputBorder? enabledBorder,
    final InputBorder? disabledBorder,
    final InputBorder? errorBorder,
    final bool isVisibleObscureButton = false,
  }) {
    return AppTextFieldNew(
      key: key,
      hintText: hintText,
      labelText: labelText,
      prefixIcon: prefixIcon,
      style: AppTextStyles.body,
      contentPadding: contentPadding,
      autofocus: autofocus,
      hintStyle: hintStyle,
      maxLength: maxLenght,
      maxLines: maxLines,
      minLines: minLines,
      validator: validator,
      initial: initial,
      onChanged: onChanged,
      inputFormatters: inputFormatters ??
          [
            FilteringTextInputFormatter.deny('          '),
            FilteringTextInputFormatter.deny('\n\n\n'),
          ],
      enabled: enabled,
      showErrorMessages: showErrorMessages,
      suffixIcon: suffixIcon,
      onTap: onTap,
      debounce: debounce,
      enabledBorder: enabledBorder,
      disabledBorder: disabledBorder,
      focusedBorder: errorBorder,
      onFieldSubmitted: onFieldSubmitted,
      isVisibleObscureButton: isVisibleObscureButton,
    );
  }

  final TextStyle? style;
  final String? labelText;
  final Widget? prefixIcon;
  final String? initial;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final int? maxLength;
  final _obscureText = <bool>[];

  bool get obscureText => _obscureText.first;

  set obscureText(bool newValue) {
    _obscureText
      ..clear()
      ..add(newValue);
    cubit.rebuild();
  }

  final bool isVisibleObscureButton;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final int? minLines;
  final Widget? suffixIcon;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String value)? onChanged;
  final FocusNode? nextFocus;
  final bool autofocus;
  final bool showErrorMessages;
  final bool readonly;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final InputBorder? focusedBorder;
  final void Function(TextEditingController)? onTap;
  late final Debounce? _debounce;
  final void Function(String)? onFieldSubmitted;

  late final TextEditingController controller;
  late final InputCubit cubit;
  final focusNode = FocusNode();

  final _enabled = <bool>[];

  bool get enabled => _enabled.first;

  set enabled(bool newValue) {
    _enabled.first = newValue;
    cubit.rebuild();
  }

  bool get validated => cubit.validate(controller.text);

  updateValidator(List<String> Function(dynamic) validator) {
    cubit.validator = validator;
  }

  Future<void> dispose() async {
    // focusNode.dispose();

    nextFocus?.dispose();
    await cubit.close();
    controller.dispose();
  }

  void get reset {
    controller.text = initial ?? '';
    cubit.reset();
  }

  @override
  _AppTextFieldNewState createState() => _AppTextFieldNewState();
}

class _AppTextFieldNewState extends State<AppTextFieldNew>
    with SingleTickerProviderStateMixin {
  bool firstRun = true;

  @override
  void initState() {
    widget.focusNode.addListener(() {
      if (mounted &&
          widget.focusNode.canRequestFocus &&
          !widget.focusNode.hasFocus &&
          !firstRun) {
        widget.validated;
      }
      firstRun = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var suffixIcon = widget.suffixIcon;
    if (widget.isVisibleObscureButton) {
      suffixIcon = ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          type: MaterialType.transparency,
          child: IconButton(
            icon: Icon(
              widget.obscureText ? Icons.visibility_off : Icons.remove_red_eye,
              color: AppColors.blackSec,
            ),
            onPressed: () {
              setState(() {
                widget.obscureText = !widget.obscureText;
              });
            },
          ),
        ),
      );
    }

    // KeyboardActionsConfig _buildConfig(BuildContext context) {
    //   return KeyboardActionsConfig(
    //     keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
    //     keyboardBarColor: Colors.grey[200],
    //     nextFocus: true,
    //     actions: [
    //       if (!kIsWeb)
    //         KeyboardActionsItem(
    //           displayArrows: false,
    //           focusNode: widget.focusNode,
    //           // footerBuilder: (_) => CounterKeyboard(
    //           //   notifier: custom1Notifier,
    //           // ),
    //         ),
    //     ],
    //   );
    // }

    return BlocProvider.value(
      value: widget.cubit,
      child: BlocBuilder<InputCubit, StateInputCubit>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ColoredBox(
                color: widget.enabled
                    ? AppColors.background
                    : AppColors.graySec,
                child: TextFormField(
                  scrollPadding: MediaQuery.of(context).viewInsets / 0.5,
                  autofocus: widget.autofocus,
                  textCapitalization: TextCapitalization.sentences,
                  readOnly: widget.readonly,
                  controller: widget.controller,
                  obscureText: widget.obscureText,
                  enableSuggestions: !widget.obscureText,
                  autocorrect: !widget.obscureText,
                  enabled: widget.enabled,
                  inputFormatters: widget.inputFormatters ??
                      [
                        FilteringTextInputFormatter.deny('          '),
                        FilteringTextInputFormatter.deny('\n\n\n'),
                      ],
                  keyboardType: widget.keyboardType,
                  textInputAction: widget.nextFocus == null
                      ? widget.textInputAction
                      : TextInputAction.next,
                  maxLength: widget.maxLength,
                  minLines: widget.minLines,
                  maxLines: widget.maxLines,
                  focusNode: widget.focusNode,
                  style: widget.style,
                  buildCounter: (
                    context, {
                    required int currentLength,
                    required bool isFocused,
                    required int? maxLength,
                  }) {
                    return const SizedBox.shrink();
                  },
                  decoration: InputDecoration(
                    prefixIcon:
                      widget.prefixIcon,
                    labelText: widget.labelText,
                    // labelStyle: TextStyle(color: widget.enabled ? AppColors.grayColor : AppColors.brandColor),
                    labelStyle: widget.labelStyle ?? const TextStyle(color: AppColors.gray),
                    suffixIcon: suffixIcon,
                    isDense: true,
                    contentPadding: widget.contentPadding,
                    hintStyle: widget.hintStyle,
                    hintText: widget.hintText,
                    counterText: '',
                    disabledBorder: widget.disabledBorder ??
                        OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: AppColors.graySec,
                            width: 1.0,
                          ),
                          gapPadding: 0.0,
                        ),
                    enabledBorder: widget.enabledBorder ??
                        OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: state.maybeMap(
                              error: (_) => AppColors.error500,
                              orElse: () => AppColors.graySec,
                            ),
                          ),
                          gapPadding: 1.0,
                        ),
                    focusedBorder: widget.disabledBorder ??
                        OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: state.maybeMap(
                              error: (_) => AppColors.error500,
                              orElse: () => AppColors.graySec,
                            ),
                            width: 1.0,
                          ),
                          gapPadding: 0.0,
                        ),
                  ),
                  onChanged: (value) {
                    widget.cubit.autovalidate(value);
                    if (widget._debounce != null) {
                      widget._debounce!(() {
                        widget.onChanged?.call(value);
                      });
                    } else {
                      widget._debounce!(() {
                        widget.onChanged?.call(value);
                      });
                    }
                  },
                  onTap: () => widget.onTap?.call(widget.controller),
                  onEditingComplete: () {
                    if (widget.validated) {
                      if (mounted &&
                          (widget.nextFocus?.canRequestFocus ?? false)) {
                        widget.nextFocus?.requestFocus();
                      } else {
                        widget.focusNode.unfocus();
                      }
                    }
                  },
                  onFieldSubmitted: widget.onFieldSubmitted,
                ),
              ),
              if (widget.showErrorMessages)
                AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  // ignore: deprecated_member_use
                  vsync: this,
                  child: state.when(
                    validated: (_) => const SizedBox(width: double.maxFinite),
                    error: (errors, _) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 2.0, left: 20),
                        child: Column(
                          children: errors
                              .map<Widget>(
                                (error) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        error,
                                        style:
                                            AppTextStyles.inputErrorHint,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                      );
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
