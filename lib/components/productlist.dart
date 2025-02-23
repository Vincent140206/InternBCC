class ProductList {
  final String name;
  final String price;
  final String imagePath;
  final String star;

  ProductList({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.star,
  });
}

final List<ProductList> productlist = [
  ProductList(
      name: 'Jamur Enoki',
      price: 'Rp 3.500',
      imagePath: 'assets/images/Enoki.png',
      star: '5.0'
  ),
  ProductList(
      name: 'Kol Segar 500gr',
      price: 'Rp 6.000',
      imagePath: 'assets/images/Kol.png',
      star: '4.7'
  ),
  ProductList(
      name: 'Kentang 500gr',
      price: 'Rp 8.000',
      imagePath: 'assets/images/Kentang.png',
      star: '4.8'
  ),
  ProductList(
      name: 'Wortel 500gr',
      price: 'Rp 10.000',
      imagePath: 'assets/images/Wortel.png',
      star: '4.6'
  ),
  ProductList(
      name: 'Bumbu Sayur Sop',
      price: 'Rp 2.000',
      imagePath: 'assets/images/Racik.png',
      star: '4.3'
  ),
  ProductList(
      name: 'Seledri 500gr',
      price: 'Rp 3.000',
      imagePath: 'assets/images/Seledri.png',
      star: '4.7'
  ),
  ProductList(
      name: 'Daging 500gr',
      price: 'Rp 41.500',
      imagePath: 'assets/images/Daging.jpg',
      star: '4.8'
  ),
  ProductList(
      name: 'Tempe',
      price: 'Rp 6.000',
      imagePath: 'assets/images/Tempe.jpg',
      star: '5.0'
  ),
  ProductList(
      name: 'Panci',
      price: 'Rp 92.000',
      imagePath: 'assets/images/Panci.jpg',
      star: '4.2'
  ),
  ProductList(
      name: 'Tepung',
      price: 'Rp 21.000',
      imagePath: 'assets/images/Tepung.jpg',
      star: '4.6'
  ),
  ProductList(
      name: 'Gundam',
      price: 'Rp 1.500.000',
      imagePath: 'assets/images/Gundam.jpg',
      star: '5.0'
  ),
  ProductList(
      name: 'Kursi Terbang',
      price: '2 Milyar',
      imagePath: 'assets/images/Helikiptir.jpg',
      star: '5.0'
  ),
];