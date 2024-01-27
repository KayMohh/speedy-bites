class TruckModel {
  String name;
  String imagePath;
  String price;
  String cusine;
  String rating;
  bool viewIsSelected;

  TruckModel({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.cusine,
    required this.rating,
    required this.viewIsSelected,
  });

  static List<TruckModel> getTrucks() {
    List<TruckModel> trucks = [];

    trucks.add(
      TruckModel(
          name: 'Dos Tacos',
          imagePath:
              'https://images.unsplash.com/photo-1565123409695-7b5ef63a2efb?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'Mexican',
          rating: '4.5',
          viewIsSelected: false),
    );

    trucks.add(
      TruckModel(
          name: 'Tacos Locos',
          imagePath:
              'https://images.unsplash.com/photo-1611250188496-e966043a0629?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'Mexican',
          rating: '4.5',
          viewIsSelected: false),
    );
    trucks.add(
      TruckModel(
          name: 'The Burger Bus',
          imagePath:
              'https://images.unsplash.com/photo-1596649299486-4cdea56fd59d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'American',
          rating: '4.1',
          viewIsSelected: false),
    );
    trucks.add(
      TruckModel(
          name: 'I Love Acai',
          imagePath:
              'https://images.unsplash.com/photo-1509315811345-672d83ef2fbc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'Smoothies',
          rating: '4.8',
          viewIsSelected: false),
    );

    return trucks;
  }
}
