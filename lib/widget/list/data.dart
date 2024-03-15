List data = [
  {
    'image': 'img/17.png',
    'title': 'Nike Sportswear Club Fleece',
  },
  {
    'image': 'img/21.png',
    'title': 'Trail Running Jacket Nike Windrunner',
  },
  {
    'image': 'img/17.png',
    'title': 'Nike Sportswear Club Fleece',
  },
  {
    'image': 'img/21.png',
    'title': 'Trail Running Jacket Nike Windrunner',
  }
];

class Argument {
  final String image;
  final String title;
  Argument({
    required this.image,
    required this.title,
  });
}

List<Argument> arguments = [
  Argument(image: 'img/17.png', title: 'Nike Sportswear Club Fleece'),
  Argument(image: 'img/21.png', title: 'Trail Running Jacket Nike Windrunner'),
  Argument(image: 'img/17.png', title: 'Nike Sportswear Club Fleece'),
  Argument(image: 'img/21.png', title: 'Trail Running Jacket Nike Windrunner'),
];
