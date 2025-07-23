import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:restapi/utils/models/cartItems.dart';
import 'package:restapi/utils/models/foodMenu.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheese Burger",
      description: "Burger with extra cheese on it ",
      imagePath:
          "lib/ImagesApp/Burger/amirali-mirhashemian-jh5XyK4Rr3Y-unsplash.jpg",
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
      imagePath: "lib/ImagesApp/Burger/amirali-mirhashemian-sc5sTPMrVfk-unsplash.jpg",
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
          "lib/ImagesApp/Burger/david-foodphototasty-E94j3rMcxlw-unsplash.jpg",
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
          "lib/ImagesApp/Burger/david-foodphototasty-Fn6dPYtPUMc-unsplash.jpg",
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
          "lib/ImagesApp/Burger/joseph-gonzalez-fdlZBWIP0aM-unsplash.jpg",
      price: 100.0,
      categories: FoodCategories.burger,
      availableAddon: [
        Addon(name: "Extra meat", price: 30.3),
        Addon(name: "Extra cheese", price: 30.3),
        Addon(name: "Extra bacon", price: 30.3),
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
  void removeFromCart(CartItem cartItems){
    int cartIndex = _cart.indexOf(cartItems);
    if(cartIndex > 1 ){
      _cart[cartIndex].quantity--;
    }else{
      _cart.removeAt(cartIndex);
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
  //get total price of the cart
  //get total number of the cart
  //clear the cart
  /*
  helpers
  */
  }

