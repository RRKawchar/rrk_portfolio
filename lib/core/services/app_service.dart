import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';

class AppService{

  static void launchURL(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    )) {
      throw 'Could not launch $url';
    }
  }



  static void sendMessage(String name, String email, String phone, String subject, String message) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'riyazurrohmankawchar@gmail.com',
      queryParameters: {
        'subject': 'New Message',
        'body': generateInvoiceContent(name, email, phone, subject, message),
      },
    );

    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
     kPrint('Could not launch email');
    }
  }

  static String generateInvoiceContent(String name, String email, String phone, String subject, String message) {
    return '''
  New Message From Portfolio
  ---------------------------
  Full Name : $name
  Email : $email
  Phone Number : $phone
  Email Subject : $subject,
  Message : $message
  ''';
  }



}