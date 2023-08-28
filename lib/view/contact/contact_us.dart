import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/view/contact/widgets/build_input_decoration.dart';
import 'package:my_portfolio/view/contact/widgets/contact_us_text.dart';
import 'package:my_portfolio/view/contact/widgets/custom_textfield.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final subController = TextEditingController();
  final messageController = TextEditingController();

  sendEmail() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        subController.text.isEmpty ||
        messageController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Please Fill The Form Properly!!",webPosition: 'left');
    } else {
      AppService.sendMessage(
        fullName: nameController.text,
        email: emailController.text,
        mobile: phoneController.text,
        subject: subController.text,
        message: messageController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveClass(
      mobile: _buildMobileForm(),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
    );
  }

  Widget _buildMobileForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const ContactUsText(),
        const SizedBox(
          height: 40,
        ),
        CustomTextField(
          controller: nameController,
          inputDecoration: buildInputDecoration(
            hintText: 'Full Name',
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: emailController,
          inputDecoration: buildInputDecoration(
            hintText: 'Email Address',
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: phoneController,
          inputDecoration: buildInputDecoration(
            hintText: "Mobile Number",
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: subController,
          inputDecoration: buildInputDecoration(
            hintText: "Email Subject",
          ),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          maxLines: 8,
          controller: messageController,
          inputDecoration: buildInputDecoration(
            hintText: "Your Message!!",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        AppButton.buildMaterialButton(
          color: AppColors.themeColor,
          text: "Send Message",
          onTap: () {
             sendEmail();
          },
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const ContactUsText(),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: nameController,
                inputDecoration: buildInputDecoration(
                  hintText: 'Full Name',
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: CustomTextField(
              controller: emailController,
              inputDecoration: buildInputDecoration(
                hintText: 'Email Address',
              ),
            )),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: phoneController,
                inputDecoration: buildInputDecoration(
                  hintText: "Mobile Number",
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomTextField(
                controller: subController,
                inputDecoration: buildInputDecoration(
                  hintText: "Email Subject",
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          maxLines: 15,
          controller: messageController,
          inputDecoration: buildInputDecoration(
            hintText: "Your Message!!",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        AppButton.buildMaterialButton(
          color: AppColors.themeColor,
          text: "Send Message",
          onTap: () {
            sendEmail();

          },
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
