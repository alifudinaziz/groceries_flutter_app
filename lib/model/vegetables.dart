class Vegetables {
  String name;
  String stock;
  String description;
  String price;
  String img;

  Vegetables({
    required this.name,
    required this.stock,
    required this.description,
    required this.price,
    required this.img,
  });
}

var veggiesList = [
  Vegetables(
    name: 'Bawang Putih',
    stock: '33 kg',
    description:
        'Bawang putih yang cocok sebagai bumbu bahan masakan agar masakan terasa sedap dan tidak hambar. Memiliki kondisi yang segar dan berkualitas.',
    price: 'Rp. 12.000/kg',
    img: 'images/bawang_putih.png',
  ),
  Vegetables(
    name: 'Brokoli',
    stock: '23 kg',
    description:
        'Brokoli yang cocok untuk tumbuh kembang anak. Memiliki kandungan serat yang tinggi sehingga dapat melancarkan proses pencernaan dalam tubuh.',
    price: 'Rp. 12.000/kg',
    img: 'images/brokoli.png',
  ),
  Vegetables(
    name: 'Cabe',
    stock: '40 kg',
    description:
        'Cabe yang memiliki rasa pedas yang dapat membuat masakan menjadi lebih terasa pedas. Sangat cocok untuk orang pecinta rasa pedas dalam masakan apapun.',
    price: 'Rp. 29.500/kg',
    img: 'images/cabe.png',
  ),
  Vegetables(
    name: 'Kentang',
    stock: '30 kg',
    description:
        'Kentang yang dapat digunakan sebagai pengganti nasi. Memiliki kandungan karbohidrat yang tinggi dan dapat diolah dalam jenis masakan apapun dan rasanya lezat.',
    price: 'Rp. 12.300/kg',
    img: 'images/kentang.png',
  ),
  Vegetables(
    name: 'Paprika',
    stock: '20 kg',
    description:
        'Paprika yang segar dan berkualitas. Cocok untuk menjadi tambahan bahan sebagai bumbu masakan agar masakan menjadi terasa lebih sedap dan lebih lezat.',
    price: 'Rp. 29.000/kg',
    img: 'images/paprika.png',
  ),
  Vegetables(
    name: 'Terong',
    stock: '27 kg',
    description:
        'Terong yang memiliki kondisi yang segar dan terjaga kualitasnya. Sangat baik untuk menjaga berat badan dan untuk menjaga tubuh agar tetap dikondisi sehat.',
    price: 'Rp. 9.500/kg',
    img: 'images/terong.png',
  ),
  Vegetables(
    name: 'Tomat',
    stock: '30 kg',
    description:
        'Tomat yang memiliki khasiat yang baik untuk kesehatan tubuh jika dikonsumsi. Memiliki kondisi yang segar dan dipetik langsung dari daerah penghasil tomat terbaik.',
    price: 'Rp. 14.500/kg',
    img: 'images/tomat.png',
  ),
  Vegetables(
    name: 'Wortel',
    stock: '23 kg',
    description:
        'Wortel yang baik untuk kesehatan mata karena memiliki kandungan Vitamin A. Sangat cocok dikonsumsi agar dapat terjaga kesehatan mata dan mencegah penyakit mata.',
    price: 'Rp. 12.100/kg',
    img: 'images/wortel.png',
  ),
];
