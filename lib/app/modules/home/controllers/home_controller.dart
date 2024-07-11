import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  //TODO: Implement HomeController

  final count = 0.obs;
  final isLogin = true.obs;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(initialIndex: 0,length: 2, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
