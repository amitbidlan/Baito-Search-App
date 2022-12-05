import 'package:baito_search_app/models/job_details.dart';
import 'package:baito_search_app/repo/jobs_repo.dart';
import 'package:flutter/material.dart';

class JobProvider extends ChangeNotifier {
  final JobsRepo jobsRepo;

  JobProvider(this.jobsRepo);
  List<JobDetails> jobDetailsListInRepo = [];
  bool isLoaded = false;
  getJobDetails(String url) async {
    jobDetailsListInRepo = await jobsRepo.getJobDetails(url);
    notifyListeners();
  }
}
