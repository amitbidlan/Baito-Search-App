import 'package:baito_search_app/models/job_details.dart';
import 'package:baito_search_app/provider/job_provider.dart';
import 'package:baito_search_app/repo/jobs_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../jobs_api_call/jobs_api_call.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key});

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    final jobProvider = Provider.of<JobProvider>(context);
    print(jobProvider.jobDetailsListInRepo.length);
    return Scaffold(
      appBar: AppBar(title: Text("Convenience Store Jobs")),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: jobProvider.jobDetailsListInRepo.length,
                itemBuilder: ((context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.network("https://ptj.sej.co.jp/" +
                            jobProvider.jobDetailsListInRepo[index].imgUrl),
                        Text(jobProvider.jobDetailsListInRepo[index].shopName),
                        Text(jobProvider
                            .jobDetailsListInRepo[index].shopNameJap),
                        Text(jobProvider.jobDetailsListInRepo[index].salary
                            .toString())
                      ],
                    ),
                  );
                })))
      ]),
    );
  }
}
