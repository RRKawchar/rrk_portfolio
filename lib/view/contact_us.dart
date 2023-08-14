import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveClass(
      bgColor:AppColors.bgColor,
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          const SizedBox(height: 40,),
          Material(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: "Full Name"),
            ),
          ),
          const SizedBox(height: 20,),
          Material(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyle.normalStyle(),
              decoration:
              buildInputDecoration(hintText: "Email Address"),
            ),
          ),
          const SizedBox(height: 20,),
          Material(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyle.normalStyle(),
              decoration:
              buildInputDecoration(hintText: "Mobile Number"),
            ),
          ),
          const SizedBox(height: 20,),
          Material(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyle.normalStyle(),
              decoration:
              buildInputDecoration(hintText: "Email Subject"),
            ),
          ),
          const SizedBox(height: 20,),
          Material(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              maxLines: 15,
              cursorColor: AppColors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: "Your message!!"),
            ),
          ),
          const SizedBox(height: 20,),
          AppButton.buildMaterialButton(text: "Send Message", onTap: () {}),
          const SizedBox(height: 30,),
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
    );
  }

  Column buildForm() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          const SizedBox(height: 40,),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyle.normalStyle(),
                    decoration: buildInputDecoration(hintText: "Full Name"),
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyle.normalStyle(),
                    decoration:
                        buildInputDecoration(hintText: "Email Address"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyle.normalStyle(),
                    decoration:
                        buildInputDecoration(hintText: "Mobile Number"),
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyle.normalStyle(),
                    decoration:
                        buildInputDecoration(hintText: "Email Subject"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Material(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              maxLines: 15,
              cursorColor: AppColors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: "Your message!!"),
            ),
          ),
          const SizedBox(height: 20,),
          AppButton.buildMaterialButton(text: "Send Message", onTap: () {}),
          const SizedBox(height: 40,),
        ],
      );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
            text: "Contact",
            style: AppTextStyle.headingStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: " Me!!",
                style: AppTextStyle.headingStyle(
                    fontSize: 30, color: AppColors.robinEdgeBlue),
              ),
            ]),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 12));
  }
}
