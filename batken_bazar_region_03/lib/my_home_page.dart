
import 'package:batken_bazar_region_03/asan_page.dart';
import 'package:batken_bazar_region_03/model.dart';

import 'package:flutter/material.dart';

 class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
       
        title:   const Row(
          children: [ SizedBox(
            width: 200,
            height: 50,
            child: TextField(
              
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(),
                  hintText: "Я ищу...",
                  prefixIcon: Icon(Icons.search),
                  
                  
                ),
              ),
          
          ),
          SizedBox(width: 60,),
          Text('Фильтр',style: TextStyle(color: Colors.green),),
          ],
        ),   
      ),

//       body:  Column(
        
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const SizedBox(height: 10,),
          
// //              Row(
// //               mainAxisAlignment: MainAxisAlignment.start,
// //             children: [
// //               const SizedBox(width: 60,),
// //               Container(
// //                 width: 50,
// //                 height: 50,
// //                 decoration: const BoxDecoration(
// //                   color: Colors.grey,
// //                   shape: BoxShape.circle,
// //                 ),
                
// //               ),
              
// //                 const SizedBox(width: 60,),
// //               Container(
// //                 width: 50,
// //                 height: 50,
// //                 decoration: const BoxDecoration(
// //                     color: Colors.yellow,
// //                     shape: BoxShape.circle,
// //                 ),
               
// //               ),
// //                 const SizedBox(width: 60,),
// //               Container(
// //                 width: 50,
// //                 height: 50,
// //                 decoration: const BoxDecoration(
// //                   color: Colors.pink,
// //                   shape: BoxShape.circle,
// //                 ),
                
// //               ),
// // const SizedBox(width: 60,),
// //               Container(
// //                 width: 50,
// //                 height: 50,
// //                 // color: Colors.blue,
// //                 decoration: const BoxDecoration(
// //                    color: Colors.blue,
// //                   shape: BoxShape.circle,
// //                 ),
// //               ),
// // const SizedBox(width: 60,),
// //               // Container(
// //               //   width: 50,
// //               //   height: 50,
// //               //   color: Colors.orange,
// //               // ),
// // Container(
// //     width: 50,
// //     height: 50,
// //     decoration: BoxDecoration(
// //       image: DecorationImage(image: Image.network('https://flutter.su/data/4e405c78a41d983fe87757c0c7e3885b.jpg').image, fit: BoxFit.cover),
// //       shape: BoxShape.circle,
// //       // boxShadow: [const BoxShadow(
// //       //     color: Colors.black54,
// //       //     blurRadius: 5.0,
// //       //     spreadRadius: 5.0,
// //       //     offset: Offset(-5, 5),
// //       // ),
// //       // ], //boxShadow
// //     ),//BoxDecoration
// //   ),

// //             ],
//               ),
              // const SizedBox(height: 10,),
               
          //  const Padding(
          //    padding: EdgeInsets.all(8.0),
          //    child: Row(
          //              children: [ SizedBox(
          //     width: 5,
          //     height: 5,
          //     child: TextField(
                
          //         decoration: InputDecoration(
                    
          //           border: OutlineInputBorder(),
          //           hintText: "",
                    
                    
                    
          //         ),
          //       ),
                       
          //              ),
                     
          //              ],
          //            ),
          //  ),
// body: Container(color: Colors.grey,),
// floatingActionButton: Padding(
//   padding: const EdgeInsets.only(top: 1,right: 330),
//   child: FloatingActionButton(
//     shape: ,
//     onPressed: (){
  
//     },
//     child: const Icon(Icons.add,color: Colors.black,),),
// ),
      body: 
          GridView.builder(
                  itemCount: Lalafos.length,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AsanPage(all: Lalafos[index],),),);
                      },
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.network(
                                Lalafos[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              Lalafos[index].name,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                
      
  );

  }
}