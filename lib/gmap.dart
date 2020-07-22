
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather/city.dart';



class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  String _mapStyle;

GoogleMapController mapController;
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    controller.setMapStyle(_mapStyle);

  }
  _getCurrentLocation() {

    geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best).then((Position position) {
      setState(() {
        print(position);
        _currentPosition = position;
      });
      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);
      Placemark place = p[0];
       
      setState(() {
        _currentAddress ="${place.locality}, ${place.postalCode}, ${place.country}";
        print(_currentAddress);
      });
    } catch (e) {
      print(e);
    }
  }


 @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  rootBundle.loadString('assets/map_style2').then((string) {
      _mapStyle = string;
    });

   
    

  }
 





  @override
  Widget build(BuildContext context) {

 Set<Marker> _markers = Set();
    _markers.add(Marker(
      icon:BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueCyan),
      markerId: MarkerId('123'),
      
        position: LatLng(_currentPosition.latitude,_currentPosition.longitude))
    );


  _markers.add(Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueCyan),
      markerId: MarkerId('1234'),
        position: LatLng(40.730610, -73.935242)
    ));

_markers.add(Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueCyan),
      markerId: MarkerId('1234'),
        position: LatLng(35.6804, 139.7690)
    ));


    return SafeArea(
      child: Scaffold(


        body:
        Stack(children: [



 GoogleMap(
          onMapCreated: _onMapCreated,
          myLocationEnabled: true,
          markers: _markers ,
          
          
          initialCameraPosition:CameraPosition(
                     target: LatLng(_currentPosition.latitude,_currentPosition.longitude),

          zoom: 20.0,
         // bearing:280,
          tilt: 90


          ),
                        mapToolbarEnabled: false,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          compassEnabled: false,

        ),

Positioned(
  top:30,
  child:   Container(
    decoration: BoxDecoration(
  
  color: Color(0xff101010),
  
      borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30) )
    ),
  
   child:Padding(
     padding: const EdgeInsets.all(10.0),
     child: Icon(
                           Icons.search,
                           color: Color(0xFF00ffee), 
                           size: 35,
                         ),
   ),
  ),
),
               


 Center(
   child: Column(
     children: [
       SizedBox(height:MediaQuery.of(context).size.height/1.2,),
       Padding(
         padding: const EdgeInsets.only(left:20.0,right:20),
         child: GestureDetector(
           onTap: (){

 Navigator.push(context, new MaterialPageRoute(builder: (context) => City()));



           },
                    child: Container(
             
             width: MediaQuery.of(context).size.width/1,
           height: 60,  

           decoration: BoxDecoration(
 color: Color(0xfff101010),

             borderRadius: BorderRadius.circular(30)
           ),
            
             
             child: Padding(
           padding: const EdgeInsets.only(left:30.0,right:30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

children: [


 CircleAvatar(
                       backgroundColor: Colors.white,
                       radius: 15,
                       backgroundImage: AssetImage('assets/ts.png'),
                     )
 ,
                      FaIcon(
                       FontAwesomeIcons.home,
                       color: Color(0xFF00ffee), 
                     ),
                      FaIcon(
                       FontAwesomeIcons.suitcase,
                       color: Color(0xFF00ffee), 
                     ),
                      FaIcon(
                       FontAwesomeIcons.bell,
                       color: Color(0xFF00ffee), 
                     ),
 Icon(
                       Icons.my_location,
                       color: Color(0xFF00ffee), 
                     )

                    
                      
],










           ),
             ),),
         ),
       ),
     ],
   ),
 )
        ],)
        
        
        
       
     






















      ),
      
    );
  }
}

