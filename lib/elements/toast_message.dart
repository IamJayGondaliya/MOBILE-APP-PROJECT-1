import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pdf_signature/configs/app_colors.dart';
import 'package:pdf_signature/elements/custom_text.dart';

getToastMessage(FToast toast, String message) {
  toast.showToast(
      toastDuration: Duration(seconds: 2),
      gravity: ToastGravity.BOTTOM,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: AppColors.kPrimaryColors,
        ),
        child: CustomText(
          text: message,
          textColor: Colors.white,
        ),
      ));
}
