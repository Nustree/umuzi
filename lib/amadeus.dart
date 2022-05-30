import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
class Amadeus {
  String? token;

  Future<String?> generateAccessToken() async {
    // fetch client id and client secret key from .env file
    String clientId = '*************************';
    String clientSecret = '*************************';
    // Amadeus authorization endpoint
    Uri authorizationUri = Uri.parse(
        "https://test.api.amadeus.com/v1/security/oauth2/token");
    Response response;
    if (kDebugMode) {
      print(clientSecret);
      print(clientId);
    }
    // send authorization request
    try {
      response = await post(authorizationUri,
          headers: {"Content-type": "application/x-www-form-urlencoded"},
          body: "grant_type=client_credentials&client_id=$clientId&client_secret=$clientSecret");
    } catch (e) {
      if (kDebugMode) {
        print("error generating token --> $e");
      }
      return "Unable to generate access token due to error $e";
    }
    Map data = jsonDecode(response.body);
    if (kDebugMode) {
      print(data);
    }
    // get token from response
    token = data['access_token'];
    return token;
  }

  void getHotelOffers() async {
    // check if there is an existing token before assigning the value to the variable.
    String? accessToken = token == null ? await generateAccessToken() : token
        .toString();
    Uri uri = Uri.parse(
        "https://test.api.amadeus.com/v1/reference-data/locations/pois?latitude=41.397158&longitude=2.160873&radius=1");
    Response response;
    // send authorization request
    try {
      response = await get(uri,
          headers: {"Authorization": "Bearer $accessToken"});
    } catch (e) {
      if (kDebugMode) {
        print("error $e occurred");
      }
      return;
    }
    Map data = jsonDecode(response.body);
    if (kDebugMode) {
      print(data);
    }
  }
}