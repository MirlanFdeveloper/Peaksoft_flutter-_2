class Students{


  Students({required this.name, required this.surname, required this.age, required this.city, required this.major, required this.photo});

  final String name;
  final String surname;
  final int age;
  final String city;
  final String major;
  final String photo;

  String get photoofStudents => photo;


}
Students s1=Students(name: 'asan', surname: '', age: 1, city: '', major: '', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw1i-6Cxkd7k8dV4SmjiCrdOWsza_4tWdRZuJkFJ3IdA&s');
Students s2=Students(name: 'usun', surname: '', age: 2, city: '', major: '', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqMj0Hl1_U2A18rz37L-f5p2sbL-v8rB9li7PtVbSe6A&s');
Students s3=Students(name: 'zuura', surname: '', age: 3, city: '', major: '', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqMj0Hl1_U2A18rz37L-f5p2sbL-v8rB9li7PtVbSe6A&s');
Students s4=Students(name: 'batma', surname: '', age: 4, city: '', major: '', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqMj0Hl1_U2A18rz37L-f5p2sbL-v8rB9li7PtVbSe6A&s');
Students s5=Students(name: 'janysh', surname: '', age: 5, city: '', major: '', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqMj0Hl1_U2A18rz37L-f5p2sbL-v8rB9li7PtVbSe6A&s');
Students s6=Students(name: 'baiysh', surname: '', age: 6, city: '', major: '', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqMj0Hl1_U2A18rz37L-f5p2sbL-v8rB9li7PtVbSe6A&s');

  List<Students>whole=[s1,s2,s3,s4,s5,s6];