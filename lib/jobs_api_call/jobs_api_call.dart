//import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:baito_search_app/models/job_details.dart';
import 'package:html/parser.dart' as parse;

class JobsApiCall {
  late List<JobDetails> jobdetailsList;
  Future<List<JobDetails>> getJobDetails(String Url) async {
    http.Response response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      final document = parse.parse(response.body);
      final carddata = document.getElementsByClassName('item_wrap');
      final data = carddata.length;
      for (var i = 0; i < data; i++) {
        String shopName(int i) {
          return carddata
              .elementAt(i)
              .getElementsByClassName('txt')
              .first
              .text
              .trim();
        }

        String shopNameJap(int i) {
          return carddata
              .elementAt(i)
              .getElementsByClassName('txt_s')
              .first
              .text
              .trim();
        }

        String phone(int i) {
          return carddata
              .elementAt(i)
              .getElementsByClassName('_shop')
              .first
              .text
              .trim();
        }

        String jobDesc(int i) {
          return carddata
              .elementAt(i)
              .getElementsByClassName('_desc  txt_base appeal')
              .first
              .text
              .trim();
        }

        String salary(int i) {
          return carddata
              .elementAt(i)
              .getElementsByClassName("_desc  txt_base")
              .elementAt(1)
              .getElementsByClassName("txt")
              .first
              .text
              .trim();
        }

        String imgUrl(int i) {
          return carddata
              .elementAt(i)
              .getElementsByTagName('img')[0]
              .attributes['src']
              .toString();
        }

        jobdetailsList = List.generate(data, (i) {
          return JobDetails(imgUrl(i), shopName(i), shopNameJap(i), jobDesc(i),
              salary(i), phone(i));
        });
      }
    } else {
      throw Exception("No data Loaded");
    }
    print('Inside Api Call ${jobdetailsList.length}');
    return jobdetailsList;
  }
}
