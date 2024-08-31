import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'category_model.dart';
import 'emergency_model.dart';

class CategoryController extends GetxController {
  var isLoading = true.obs;

  var categoryList = <CategoryData>[].obs;
  var productListMap = <int, List<EmergencyData>>{}.obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse('https://apcombd.com/api/v2/categories/app-home-categories'),
      );
      if (response.statusCode == 200) {
        var categoryModel = categoryModelFromJson(response.body);
        categoryList.value = categoryModel.data;

        // Fetch products for each category
        for (var category in categoryList) {
          fetchProducts(category.id, category.links.products);
        }
      } else {
        Get.snackbar("Error", "Failed to fetch categories");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }

  void fetchProducts(int categoryId, String productUrl) async {
    try {
      final response = await http.get(Uri.parse(productUrl));
      if (response.statusCode == 200) {
        var emergencyModel = emergencyModelFromJson(response.body);
        productListMap[categoryId] = emergencyModel.data ?? [];
      } else {
        Get.snackbar("Error", "Failed to fetch products for category $categoryId");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
