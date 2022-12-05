import 'package:baito_search_app/jobs_api_call/jobs_api_call.dart';
import 'package:baito_search_app/models/details_screen.dart';
import 'package:baito_search_app/pages/home_page.dart';
import 'package:baito_search_app/pages/home_screen.dart';
import 'package:baito_search_app/provider/job_provider.dart';
import 'package:baito_search_app/repo/jobs_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late JobsApiCall jobsApiCall;
  late JobsRepo jobsRepo;
  late JobProvider jobProvider;
  @override
  void initState() {
    jobsApiCall = JobsApiCall();
    jobsRepo = JobsRepo(jobsApiCall);
    jobProvider = JobProvider(jobsRepo);
    jobProvider.getJobDetails(
        "https://ptj.sej.co.jp/arbeit/recruitment/jobfind-ml-pc/en/area/KyushuOkinawa/Fukuoka");
    
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider(
      create: (BuildContext context) => jobProvider,
      child: const DetailedScreen(),
    ));
  }
}
