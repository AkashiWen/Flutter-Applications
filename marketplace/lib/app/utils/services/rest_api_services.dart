library rest_api_service;

import 'package:flutter/material.dart';
import '../../../app/constants/app_constants.dart';

import '../../constants/app_constants.dart';

// model
part 'model/product.dart';
part 'model/user.dart';

// src
part 'src/product_service.dart';
part 'src/user_service.dart';

/// custom setup for request api
class RestApiServices {
  // to get data from server, you can use Http for simple feature
  // or Dio for more complex feature

  Duration get timeOut => const Duration(seconds: 30);
}