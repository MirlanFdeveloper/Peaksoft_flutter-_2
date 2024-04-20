import 'package:flutter/material.dart';
import 'package:lalafo_2/model.dart';

class EihthPages extends StatelessWidget {
  const EihthPages({super.key, 
  required this.allName,
   required this.allSurname, 
   required this.allage,
    required this.allCity,
     required this.allMajor, 
     required this.allPhoto});


final Students allName;
final Students allSurname;
final Students allage;
final Students allCity;
final Students allMajor;
final Students allPhoto;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
appBar: AppBar(
  title: Text(allName.name),),
  body: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width*0.9,
        child: Card(
          color: Colors.grey.shade300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 230,top: 30),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    allPhoto.photoofStudents,
                    

                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 150,
                  ),
                  child: Text( allSurname.surname,
                  
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                    left: 150,
                  ),
                  child:Text(allCity.city),
                  ),
                Padding(
                  padding:  const EdgeInsets.only(
                 left: 150,
                  ),
                child: Text(allMajor.major),
                ),

            ],
          ),
        ),
      )
    ],
  ),
    );
  }
}
