class KG{
 KG({required this.name, required this.image, required this.color});

  final String name;
  final String image;
  final String color;

}
KG a1 =KG(
  name: 'Ыссык кол', 
  image: 'https://media-cdn.tripadvisor.com/media/photo-m/1280/18/52/e6/0e/caption.jpg',
   color: "");
KG a2 =KG(
  name: 'Сары челек', 
  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8cm-TqdYp1_-UAoXRF2FVrL5vc3ADn7FlnRmot34Emw&s', 
  color: '');
KG a3 =KG(
  name: 'Сон кол',
   image: 'https://cdn.tripster.ru/thumbs2/e522e586-e27e-11ec-bb23-2ee827150adb.800x600.jpeg',
    color: '');

List<KG>turist=[a1,a2,a3];