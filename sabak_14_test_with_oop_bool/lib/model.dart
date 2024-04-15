class Test {
  Test ({required this.suroo, required this.joob});
  final String suroo;
  final bool joob;
}
Test t1 = Test(suroo: 'Кыргызстанда 7 область барбы?', joob: true);
Test t2 = Test(suroo: "Кыргызстанда калтын саны 7 миллионбу?",joob: true);
Test t3 = Test(suroo: 'Крокодиль учабы?', joob: false);
Test t4 = Test(suroo: 'Тоолор жылабы?', joob: true);
Test t5 = Test(suroo:  'Бишкек кыргызстандын борбор шаарыбы?', joob: true);

List<Test>guotinos= [t1,t2,t3,t4,t5];