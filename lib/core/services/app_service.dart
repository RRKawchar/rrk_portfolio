import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class AppService {
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


  static Future sendMessage(
      {required String fullName,
        required String email,
        required String mobile,
        required String subject,
        required String message}) async {

    const serviceId = 'service_xyhvfmo';
    const templateId = 'template_20rxh77';
    const userId = 'tdOvE4DYjqAgg9FwI';

    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

    final headers = {
      'origin': 'http://localhost',
      'Content-Type': 'application/json',
    };

    final body = {
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'user_name': fullName,
        'user_email': email,
        'to_email': 'riyazurrohmankawchar@gmail.com', // All time emails will be sent to this address
        'user_subject': subject,
        'user_message': message,
      }
    };

    final response = await http.post(
      url,
      headers: headers,
      body: json.encode(body), // Convert the body to a JSON string
    );

    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: "Email sent Successfully!!");
      kPrint(response.body);
    } else {
      Fluttertoast.showToast(msg: "Email Send Failed!!");
      kPrint(response.body);
    }
  }
}
