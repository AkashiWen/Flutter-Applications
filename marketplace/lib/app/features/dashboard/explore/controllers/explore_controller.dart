part of explore;

class ExploreController extends GetxController {
  final ProductService productService = ProductService();

  List<Product> getAllProduct() => productService.getAll();
  List<Product> getFashioinProduct() => productService.getFashion();
}
