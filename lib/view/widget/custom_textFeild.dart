import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsfm/core/colors/app_colors.dart';

class CustomTextFeild extends StatefulWidget {
  String? hintText;
  String? initialText;
  FocusNode? focusNode;
  double? fontsize;
  bool? enable; 
  int? maxLength;
  final Function(String)? onChanged;

  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  TextInputType? keyboardType;
  CustomTextFeild({super.key, this.hintText, this.initialText, this.focusNode, this.controller, this.validator,  this.fontsize, this.enable, this.keyboardType, this.maxLength, this.onChanged});

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        // height: 45,
        child: TextFormField(
          initialValue: widget.initialText,
          focusNode: widget.focusNode,
          controller: widget.controller,
          validator: widget.validator,
          enabled: widget.enable,
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLength,

          // style: GoogleFonts.openSans(
          //                           textStyle: const TextStyle(
          //                               fontSize: 16,
          //                               fontWeight: normal,
          //                               // color: mediumGrey9CA3AFColor
          //                               )),
          // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          // cursorColor: black111011Color,
          decoration: InputDecoration(
            isDense: true,
            counterText: "",     //// to show the counter remove it
            isCollapsed: true,
            // errorText: "Wrong No.",
            
            // labelStyle: GoogleFonts.openSans(textStyle: const TextStyle(color: mediumGrey9CA3AFColor)),
            hintText: widget.hintText,
            hintStyle: TextStyle(color: whiteFFFFFFColor),
            // hintStyle: GoogleFonts.openSans(textStyle: TextStyle(
            //   color: mediumGrey9CA3AFColor,
            //   fontSize: 16,
            //   fontWeight: normal
            // )
            // ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 13.11,vertical: 12.5),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1, color: yellowF6E18CColor),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide:
              const BorderSide(width: 0, color: yellowF6E18CColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide:
              const BorderSide(width: 0, color: yellowF6E18CColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide:
              const BorderSide(width: 0, color: yellowF6E18CColor),
            ),
            errorBorder: OutlineInputBorder(
              // gapPadding: 2,
              borderRadius: BorderRadius.circular(6.0),
              borderSide:
              const BorderSide(width: 1, color: redColor),
            ),
            
            filled: true,
            fillColor: blackColor,
            
          ),

        ),
      );
  }
}