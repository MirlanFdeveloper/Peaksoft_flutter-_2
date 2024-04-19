class Family {

Family(this.age, {required this.name, required this.image, required this.color});

  final String name;
  final String image;
  final String color;
  final int age;

}
Family f1 =Family(
  10,
   name: 'Barsbek',
    image: 'https://i.pinimg.com/474x/89/06/48/890648b7b32286e6cf5cada541d47add.jpg',
     color: '');
Family f2 =Family(
  6,
  name: 'Medina',
   image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrAjWCxd5CCKWHk8GRfpKIZ2qXFK2VgjHx6CyQVNxYwg&s', 
   color: '');
Family f3 =Family(
  5,
  name: 'Malika',
   image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSusijVKoe_n9qvEoaOjf4P1BRCoITNlm6nhyI7mbCoA&s',
    color: '');
Family f4 =Family(
  3,
  name: 'Muhammed',
   image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Fe5S8gobJEAppR-muXrmJXjUJmKgydViJPQGAPFREQ&s', 
   color: '');

List<Family>arashan44=[f1,f2,f3,f4];
