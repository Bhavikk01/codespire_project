import 'package:codespire_app/repo/cart_repo.dart';
import 'package:get/get.dart';

class CartController {
  CartRepo cartRepo;
  CartController({required this.cartRepo});

  fetchData() async {
    Response response = await cartRepo.getJson();
    print(response.statusCode);
  }
}
