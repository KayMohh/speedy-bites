class FeatModel {
  String name;
  String imagePath;
  String price;
  String cusine;
  String rating;
  String distance;
  bool viewIsSelected;

  FeatModel({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.cusine,
    required this.rating,
    required this.distance,
    required this.viewIsSelected,
  });

  static List<FeatModel> getFeats() {
    List<FeatModel> feats = [];

    feats.add(
      FeatModel(
          name: 'Street Sweets',
          imagePath:
              'https://images.unsplash.com/photo-1570441262582-a2d4b9a916a5?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'Desserts',
          rating: '4.1',
          distance: '2.2 Mi',
          viewIsSelected: false),
    );

    feats.add(
      FeatModel(
          name: 'Burger Bistro',
          imagePath:
              'https://images.unsplash.com/photo-1514996183542-72c207fee1e3?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'American',
          distance: '2.2 Mi',
          rating: '4.7',
          viewIsSelected: false),
    );
    feats.add(
      FeatModel(
          name: 'The Real Deal',
          imagePath:
              'https://images.unsplash.com/photo-1576595879571-5402d294c407?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'Desserts',
          distance: '2.2 Mi',
          rating: '4.5',
          viewIsSelected: false),
    );
    feats.add(
      FeatModel(
          name: 'Pie in The Sky',
          imagePath:
              'https://images.unsplash.com/photo-1606066889831-35faf6fa6ff6?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          price: 'easy',
          cusine: 'American',
          distance: '2.2 Mi',
          rating: '4.9',
          viewIsSelected: false),
    );

    return feats;
  }
}
