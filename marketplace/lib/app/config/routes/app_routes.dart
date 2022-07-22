part of 'app_pages.dart';

/// used to switch pages
class Routes {
  static const String dashboard = _Paths.dashboard;
  static const String product = _Paths.product;
}

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const String dashboard = '/dashboard';
  static const String product = '/product';

  // Example :
  // static const index = '/';
  // static const splash = '/splash';
  // static const product = '/product';
  // static const productEdit = '/product/edit';
  // static const productDetail = '/product/detail';
  // static const productAdd = '/product/add';
}
