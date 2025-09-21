import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:user_details_app/core/common/common_repository.dart';
import 'package:user_details_app/features/users_screen/model/user_model.dart';
import '../../../core/network/api_endpoints.dart';

class UsersScreenController extends GetxController {
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getUsers();
  }

  List<dynamic> listOfUsers = [];
  List<dynamic> permanentListOfUsers = [];
  bool isLoading = false;
  TextEditingController searchTextEditingController = TextEditingController();

  Future<void> getUsers() async {
    try {
      isLoading = true;
      update();
      var data = await CommonRepository.getMethod(endPoint: usersEndPoint);
      if (data != null && data.isNotEmpty) {
        listOfUsers = data.map((json) => UserModel.fromJson(json)).toList();
        permanentListOfUsers = listOfUsers;
        log("Geo lat : ${permanentListOfUsers[0].address.geo.lat}");
      }
      //log("data : $data");
      isLoading = false;
      update();
    } catch (e) {
      log("Exception in getUsers : $e");
      isLoading = false;
      update();
    }
  }

  void onChangedSearchBar(String? value) {
    if (value != null) {
      log("In the onChangedSearchBar");
      isLoading = true;
      update();
      listOfUsers = [];

      log("Value : $value");

      for (var user in permanentListOfUsers) {
        //log("In for loop");
        String userName = user.name;
        userName = userName.toLowerCase();
        if (userName.startsWith(value.toLowerCase())) {
          //log(userName);
          listOfUsers.add(user);
        }
      }
      log("listOfUsers : $listOfUsers");
      isLoading = false;
      update();
    } else {
      listOfUsers = permanentListOfUsers;
      update();
    }
  }
}
