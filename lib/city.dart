import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class City extends StatefulWidget {
  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {








  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                    'assets/ff.jpg',
                  ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child:  Column(
                        children: [
                          SizedBox(height:10),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                         children: [
                           IconButton(icon: FaIcon(FontAwesomeIcons.chevronCircleLeft,color: Colors.white,), onPressed: (){

                             Navigator.pop(context);
                           }),
Icon(Icons.more_vert,color: Colors.white,),


                         ],
                       ),
                                              SizedBox(height:10),



                     

                       SizedBox(height:60),

                       Container(
                         width: MediaQuery.of(context).size.width/1.2,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
                         
                           children: [
                             Text('Chile, South America',style: TextStyle(
                         
                         
                           color: Colors.white,
                           fontSize: 15,
                           fontWeight: FontWeight.w300
                         )),
                         SizedBox(height:10),

                         Text('Santiago',style: TextStyle(


                         color: Colors.white,
                         fontSize: 60,
                           fontWeight: FontWeight.w700

),),
SizedBox(height:10),

Row(
 
  children: [

Expanded(
      flex: 1,
          child: BlurryContainer(
         borderRadius: BorderRadius.circular(30),
                                blur: 1,
                                bgColor: Colors.white10,
child: Column(

  mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
                         
  children: [

    Icon(Icons.location_on,color: Color(0xff101010),),
    SizedBox(height:40),

     Text('Things to do',style: TextStyle(
                         
                         
                           color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.w900
                         )),

  ],
),


      ),
    ),
      SizedBox(width: 10,),  
Expanded(
      flex: 1,
          child: BlurryContainer(
         borderRadius: BorderRadius.circular(30),
                                blur: 1,
                                bgColor: Colors.white10,
child: Column(

  mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
                         
  children: [

    Icon(Icons.restaurant,color: Color(0xff101010),),
    SizedBox(height:40),

     Text('Restaurants',style: TextStyle(
                         
                         
                           color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.w900
                         )),

  ],
),


      ),
    ),

  ],

),
    SizedBox(height:10),
    Row(
 
  children: [

   Expanded(
      flex: 1,
          child: BlurryContainer(
         borderRadius: BorderRadius.circular(30),
                                blur: 1,
                                bgColor: Colors.white10,
child: Column(

  mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
                         
  children: [

    Icon(Icons.hotel,color: Color(0xff101010),),
    SizedBox(height:40),

     Text('Hotels',style: TextStyle(
                         
                         
                           color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.w900
                         )),

  ],
),


      ),
    ),
      SizedBox(width: 10,),  
Expanded(
      flex: 1,
          child: BlurryContainer(
         borderRadius: BorderRadius.circular(30),
                                blur: 1,
                                bgColor: Colors.white10,
child: Column(

  mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
                         
  children: [

    FaIcon(FontAwesomeIcons.book,color: Color(0xff101010),),
    SizedBox(height:40),

     Text('Guidebooks',style: TextStyle(
                         
                         
                           color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.w900
                         )),

  ],
),


      ),
    ),

  ],

),


                           ],
                         ),
                       ),
                        ],
                      )),
            Expanded(
                flex: 1,
                child: Container(
width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(


  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
  color: Color(0xFF101010)


),

child: Column(

  mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,

  children: [
SizedBox(height:10),
 Center(
   child: Container(
    
    
     
      width: 60,
      height: 5,
      decoration: BoxDecoration(
     color: Colors.grey[600],
    
               borderRadius: BorderRadius.circular(30)
             ),
    ),
 ),
 
Padding(
  padding: const EdgeInsets.only(top:10.0,left:30,bottom: 10),
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
      Text('OVERVIEW',style: TextStyle(
  
  
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w300
  )),
  SizedBox(height:10),

  Text('Santiago, a metropolis\nwith a breathtaking view',style: TextStyle(


  color: Colors.white,
  fontSize: 25,
    fontWeight: FontWeight.w700

),)
    ],
  ),
),





  ],
),

                  ))
          ],
        ),
      ),
    ));
  }
}