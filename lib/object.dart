class AdvertBanner {
  String imageUrl;

  AdvertBanner({required this.imageUrl});
}

class Explorer {
  String name;
  String imageUrl;

  Explorer({
    required this.name,
    required this.imageUrl,
  });
}

class PopularRestaurant {
  String name;
  String imageUrl;
  bool favorite;
  String address;
  bool rating;

  PopularRestaurant({
    required this.name,
    required this.imageUrl,
    required this.favorite,
    required this.address,
    required this.rating,
  });
}

class Cuisines {
  String name;
  String imageUrl;

  Cuisines({
    required this.name,
    required this.imageUrl,
  });
}

class PopularFoodNearBy {
  String name;
  String imageUrl;
  double price;
  String address;
  bool rating;

  PopularFoodNearBy({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.address,
    required this.rating,
  });
}

class NewOnFoodHunt {
  String name;
  String imageUrl;
  bool favorite;
  String address;
  bool rating;

  NewOnFoodHunt({
    required this.name,
    required this.imageUrl,
    required this.favorite,
    required this.address,
    required this.rating,
  });
}

class BestReviewedFood {
  String name;
  String imageUrl;
  double price;
  String address;
  bool rating;

  BestReviewedFood({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.address,
    required this.rating,
  });
}

class AllRestaurants {
  String name;
  String imageUrl;
  bool favorite;
  String address;
  bool rating;

  AllRestaurants({
    required this.name,
    required this.imageUrl,
    required this.favorite,
    required this.address,
    required this.rating,
  });
}

class RestaurantData {
  List<AdvertBanner> advertBanners;
  List<Explorer> explorers;
  List<PopularRestaurant> popularRestaurants;
  List<Cuisines> cuisines;
  List<PopularFoodNearBy> popularFoodNearBy;
  List<NewOnFoodHunt> newOnFoodHunt;
  List<BestReviewedFood> bestReviewedFoods;
  List<AllRestaurants> allRestaurants;

  RestaurantData({
    required this.advertBanners,
    required this.explorers,
    required this.popularRestaurants,
    required this.cuisines,
    required this.popularFoodNearBy,
    required this.newOnFoodHunt,
    required this.bestReviewedFoods,
    required this.allRestaurants,
  });
}

RestaurantData restaurantData = RestaurantData(
  advertBanners: [
    AdvertBanner(
      imageUrl: '',
    ),
  ],
  explorers: [
    Explorer(name: 'Cake', imageUrl: '/images/explorer/cake.jpeg'),
    Explorer(name: 'Shawarma', imageUrl: '/images/explorer/shawarma.jpeg'),
    Explorer(name: 'Drinks', imageUrl: '/images/explorer/drinks.jpeg'),
    Explorer(name: 'Soup', imageUrl: '/images/explorer/soup.jpg'),
    Explorer(name: 'Rice', imageUrl: '/images/explorer/rice.jpeg'),
    Explorer(name: 'Proteins', imageUrl: '/images/explorer/proteins.jpeg'),
    Explorer(name: 'Noodles', imageUrl: '/images/explorer/noodles.jpeg'),
    Explorer(name: 'Salad', imageUrl: '/images/explorer/salad.jpg'),
    Explorer(name: 'Fries', imageUrl: '/images/explorer/fries.jpg'),
    Explorer(name: 'Sandwiches', imageUrl: '/images/explorer/sandwich.jpg'),
    Explorer(name: 'Pizza', imageUrl: '/images/explorer/pizza.jpg'),
    Explorer(name: 'Grills', imageUrl: '/images/explorer/grills.jpeg'),
    Explorer(name: 'Pasta', imageUrl: '/images/explorer/pasta.jpeg'),
    Explorer(name: 'Burgers', imageUrl: '/images/explorer/burger.jpeg'),
    Explorer(name: 'Sushi', imageUrl: '/images/explorer/sushi.jpeg'),
    Explorer(name: 'Tacos', imageUrl: '/images/explorer/tacos.jpg'),
    Explorer(name: 'Ice Cream', imageUrl: '/images/explorer/ice-cream.jpg'),
    Explorer(name: 'Smoothies', imageUrl: '/images/explorer/smoothie.jpg'),
    Explorer(name: 'Pancakes', imageUrl: '/images/explorer/pancake.jpg'),
    Explorer(name: 'Waffles', imageUrl: '/images/explorer/waffle.jpg'),
    Explorer(name: 'Hot Dogs', imageUrl: '/images/explorer/hot-dog.jpeg'),
    Explorer(name: 'Doughnuts', imageUrl: '/images/explorer/doughnut.jpg'),
    Explorer(name: 'Burritos', imageUrl: '/images/explorer/burritos.jpeg'),
    Explorer(name: 'Steaks', imageUrl: '/images/explorer/steak.jpg'),
    Explorer(name: 'Snacks', imageUrl: '/images/explorer/snacks.jpeg'),
    Explorer(name: 'Others', imageUrl: '/images/explorer/others.jpg'),
  ],
  popularRestaurants: [
    PopularRestaurant(
      name: '',
      imageUrl: '',
      favorite: false,
      address: '',
      rating: false,
    ),
  ],
  cuisines: [
    Cuisines(name: 'African', imageUrl: ''),
    Cuisines(name: 'Chinese', imageUrl: ''),
    Cuisines(name: 'Fast Food', imageUrl: ''),
    Cuisines(name: 'Italian', imageUrl: ''),
  ],
  popularFoodNearBy: [
    PopularFoodNearBy(
      name: '',
      imageUrl: '',
      price: 0,
      address: '',
      rating: false,
    ),
  ],
  newOnFoodHunt: [
    NewOnFoodHunt(
      name: '',
      imageUrl: '',
      favorite: false,
      address: '',
      rating: false,
    ),
  ],
  bestReviewedFoods: [
    BestReviewedFood(
      name: '',
      imageUrl: '',
      price: 0,
      address: '',
      rating: false,
    ),
  ],
  allRestaurants: [
    AllRestaurants(
        name: 'Kilimanjaro',
        imageUrl: '/images/advert_banner/kilimanjaro1.png',
        favorite: true,
        address: '123 Main St',
        rating: true),
    AllRestaurants(
        name: 'Chicken Republic',
        imageUrl: '/images/advert_banner/chickenRepublic.jpeg',
        favorite: true,
        address: '123 Main St',
        rating: true),
    AllRestaurants(
        name: 'Food Palace',
        imageUrl: 'https://example.com/food_palace.png',
        favorite: true,
        address: '123 Main St',
        rating: true),
    AllRestaurants(
        name: 'Tasty Bites',
        imageUrl: 'https://example.com/tasty_bites.png',
        favorite: false,
        address: '456 Market Ave',
        rating: false),
    AllRestaurants(
        name: 'Okwy Shawarma',
        imageUrl: 'https://example.com/shawarma_king.png',
        favorite: true,
        address: '789 Food Blvd',
        rating: true),
    AllRestaurants(
        name: 'Five Star',
        imageUrl: '/images/advert_banner/fiveStar.png',
        favorite: true,
        address: '321 Flame St',
        rating: true),
    AllRestaurants(
        name: 'Mr Biggs',
        imageUrl: 'https://example.com/pizza_haven.png',
        favorite: false,
        address: '654 Slice Ave',
        rating: false),
  ],
);
