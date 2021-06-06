class Fruits {
  String name;
  String stock;
  String description;
  String price;
  String img;

  Fruits({
    required this.name,
    required this.stock,
    required this.description,
    required this.price,
    required this.img,
  });
}

var fruitsList = [
  Fruits(
    name: 'Anggur',
    stock: '60 kg',
    description:
        'Anggur merah berkualitas, tersedia dalam keadaan yang masih segar dan baru dipetik dari kebun yang berada di daerah Probolinggo.',
    price: 'Rp. 10.000/kg',
    img: 'images/anggur.png',
  ),
  Fruits(
    name: 'Apel',
    stock: '35 kg',
    description:
        'Apel yang berasal dari Malang. Sangat berkualitas dan fresh dan baik untuk kesehatan. Cocok untuk dimakan saat berkumpul dengan keluarga.',
    price: 'Rp. 15.000/kg',
    img: 'images/apel.png',
  ),
  Fruits(
    name: 'Buah Naga',
    stock: '28 kg',
    description:
        'Buah Naga yang terpilih dan terbaik saat dipanen di daerah Banyuwangi. Sangat cocok untuk dikonsumsi saat bersantai di rumah bersama keluarga.',
    price: 'Rp. 13.500/kg',
    img: 'images/buah_naga.png',
  ),
  Fruits(
    name: 'Durian',
    stock: '30',
    description:
        'Buah Durian montong yang masih dalam keadaan segar dan matang. Dipetik langsung dari daerah Banjarnegara sehingga terjamin kualitas dan kelezatannya.',
    price: 'Rp. 30.300',
    img: 'images/durian.png',
  ),
  Fruits(
    name: 'Jeruk',
    stock: '43 kg',
    description:
        'Jeruk segar dan memiliki rasa yang lezat. Cocok untuk oleh-oleh dan sangat baik untuk kesehatan dan menjaga Vitamin C yang dibutuhkan oleh tubuh.',
    price: 'Rp. 9.000/kg',
    img: 'images/jeruk.png',
  ),
  Fruits(
    name: 'Pisang',
    stock: '27',
    description:
        'Pisang memiliki kualitas yang baik. Langsung dipanen di provinsi Jawa Timur yang terkenal sebagai penghasil pisang yang berkualitas dan terbaik.',
    price: 'Rp. 17.000',
    img: 'images/pisang.png',
  ),
  Fruits(
    name: 'Rambutan',
    stock: '30 kg',
    description:
        'Rambutan terlezat yang berjenis rambutan binjai. Dipanen langsung dari daerah Blitar yang memiliki perkebunan rambutan yang terbaik dan terjaga kualitasnya.',
    price: 'Rp. 15.000/kg',
    img: 'images/rambutan.png',
  ),
  Fruits(
    name: 'Strawberry',
    stock: '20 kg',
    description:
        'Strawberry yang sangat lezat dan memiliki kandungan gizi yang baik untuk tubuh. Cocok untuk oleh-oleh agar keluarga di rumah dapat merasakan rasa lezatnya.',
    price: 'Rp. 17.800/kg',
    img: 'images/strawberry.png',
  ),
];
