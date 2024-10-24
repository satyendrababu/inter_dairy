abstract class BaseApiService {

  //final String baseUrl = "https://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/";
  final String baseUrl = "https://50thdairyindustryconference.com/MobileAppAPI/";


  Future<dynamic> makeGetTypeApiRequest(String url);

  Future<dynamic> makePostTypeApiRequest(String url, dynamic data);

  Future<dynamic> makeGetRequest(String? url, String? userId, String? token);

  Future<dynamic> makeGetRequestToDeleteMedicine(String? url, String? visitId, String? medicineId, String? token);


}