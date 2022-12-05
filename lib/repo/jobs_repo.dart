import 'package:baito_search_app/jobs_api_call/jobs_api_call.dart';
import 'package:baito_search_app/models/job_details.dart';

class JobsRepo {
  final JobsApiCall jobsApiCall;

  JobsRepo(this.jobsApiCall);
  Future<List<JobDetails>> getJobDetails(String url) async {
    return await jobsApiCall.getJobDetails(url);
  }
}
