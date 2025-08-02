import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:restapi/utils/models/cartItems.dart';
import 'package:restapi/utils/models/foodMenu.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Smoky BBQ Burger",
      description: "Juicy grilled beef patty with smoky BBQ sauce and crispy onions.",
      imagePath: "lib/ImagesApp/Burger/amirali-mirhashemian-jh5XyK4Rr3Y-unsplash.jpg",
      price: 120.0,
      categories: FoodCategories.burger,
      availableAddon: [
        Addon(name: "BBQ Sauce", price: 20.0),
        Addon(name: "Fried Onions", price: 15.0),
        Addon(name: "Grilled Pineapple", price: 25.0),
      ],
    ),
    Food(
      name: "Spicy Jalapeño Burger",
      description: "Beef burger with fiery jalapeños, spicy mayo, and pepper jack cheese.",
      imagePath: "lib/ImagesApp/Burger/amirali-mirhashemian-sc5sTPMrVfk-unsplash.jpg",
      price: 130.0,
      categories: FoodCategories.burger,
      availableAddon: [
        Addon(name: "Extra Jalapeños", price: 18.0),
        Addon(name: "Spicy Mayo", price: 12.0),
        Addon(name: "Pepper Jack Slice", price: 22.0),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description: "A tender beef burger topped with sautéed mushrooms and Swiss cheese.",
      imagePath: "lib/ImagesApp/Burger/david-foodphototasty-E94j3rMcxlw-unsplash.jpg",
      price: 140.0,
      categories: FoodCategories.burger,
      availableAddon: [
        Addon(name: "Extra Mushrooms", price: 20.0),
        Addon(name: "Swiss Cheese", price: 25.0),
        Addon(name: "Truffle Aioli", price: 30.0),
      ],
    ),
    Food(
      name: "Bacon Ranch Delight",
      description: "Crispy bacon stacked on a beef patty with ranch and cheddar.",
      imagePath: "lib/ImagesApp/Burger/david-foodphototasty-Fn6dPYtPUMc-unsplash.jpg",
      price: 125.0,
      categories: FoodCategories.burger,
      availableAddon: [
        Addon(name: "Crispy Bacon", price: 28.0),
        Addon(name: "Ranch Drizzle", price: 18.0),
        Addon(name: "Double Cheddar", price: 22.0),
      ],
    ),
    Food(
      name: "Hawaiian Teriyaki Burger",
      description: "Sweet teriyaki sauce, grilled pineapple, and fresh lettuce.",
      imagePath: "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 135.0,
      categories: FoodCategories.burger,
      availableAddon: [
        Addon(name: "Teriyaki Glaze", price: 19.0),
        Addon(name: "Pineapple Slice", price: 21.0),
        Addon(name: "Lettuce Boost", price: 10.0),
      ],
    ),

    //salads
    Food(
      name: "salad 1",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Salads/adam-bartoszewicz-lNFfYtrbkRM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.salads,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Salads/anh-nguyen-kcA-c3f_3FE-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.salads,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Salads/kimia-kazemi-gZI8z-6LxMo-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.burger,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Salads/metin-ozer-kvp1Ppohv9I-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.salads,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Salads/tania-melnyczuk-xeTv9N2FjXA-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.salads,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    //drinks
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.drinks,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.drinks,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.drinks,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.drinks,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.drinks,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    //deserts
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Deserts/inna-safa-RkYI8tFGttQ-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.desert,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    //sides
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Sides/anshu-a-_KpI-j2GgGA-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.sides,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.sides,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.sides,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.sides,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
      "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.sides,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
      ],
    ),
  ];
  /*
  getters
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*
  operation
  */
  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food , List<Addon> selectedAddons){
    // see if there is already an cart item with same selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item){
    //check if the food item are the same
      bool isSameItem = item.food == food;
    //check if the list of selected addons are the same
      bool isSameAddon = ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameItem && isSameAddon;
    });
    if(cartItem != null){
      cartItem.quantity++;
    }else{
      _cart.add(
          CartItem(
              food: food,
              selectedAddons: selectedAddons
          )
      );
    }
    notifyListeners();
  }
  //remove the cart
  void removeFromCart(CartItem cartItem, List<Addon> selectedAddons) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
      notifyListeners(); // Only notify if changes were made
    }
  }

  //get total price of the cart
  double getTotalPrice(){
    double total = 0;
    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;
      for(Addon addon in cartItem.selectedAddons){
       itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;

    }
    return total;
  }
  //get total number of the cart
  int? getTotalItemCount(){
    int totalItemInCart = 0;
    for(CartItem cartItem in _cart){
      totalItemInCart += cartItem.quantity;

    }
    return totalItemInCart;
  }
  //clear the cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }
  /*
  helpers
  */
  }

