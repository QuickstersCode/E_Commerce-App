import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final Widget? startIcon;
  final Widget? lastIcon;
  final bool? obscur;
  final VoidCallback? fun;
  final bool? focus;
  final Color? fillColor;
  final bool isValid;
  final bool? boarder;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final int? maxline;
  final bool? fillColorShow;
  final Function(String)? onChanged;

  const MyTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.labelText,
    this.lastIcon,
    this.obscur = false,
    this.startIcon,
    this.keyboardType,
    this.fun,
    this.focus = false,
    this.fillColor = Colors.white,
    this.isValid = true,
    this.boarder = false,
    this.maxline = 1,
    this.fillColorShow = false,
    this.onChanged,
  }) : super(key: key);

  OutlineInputBorder _getBorder(bool isValid) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color:
            isValid
                ? Colors.green
                : isValid == false
                ? Colors.red
                : Colors.grey,
        //  width: 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: focus!,
      obscureText: obscur!,
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 14),
      controller: controller,
      cursorColor: AppColors.black,
      maxLines: maxline,

      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: lastIcon,
        prefixIcon: startIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black54),
        filled: fillColorShow!,
        fillColor: fillColorShow! ? fillColor : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xffE5E7EB)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xffE5E7EB)),
        ),
        focusedBorder: _getBorder(isValid),
      ),
    );
  }
}



// void validateInput() {
//     setState(() {
//       controller.isEmailValid = RegExp(
//         r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
//       ).hasMatch(controller.email.text.trim());
//       controller.isPasswordValid = controller.password.text.trim().length >= 6;
//     });
//   }



  // bool isEmailValid = true;
  // bool isPasswordValid = true;
//  CustomTextField(
//                 controller: controller.email,
//                 hintText: 'Enter Your Email',
//                 keyboardType: TextInputType.emailAddress,
//                 isValid: controller.isEmailValid,
//                 onChanged: (_) => validateInput(),
//               ),