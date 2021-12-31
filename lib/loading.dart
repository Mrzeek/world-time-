import 'package:flutter/material.dart';
import 'package:world_time/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



   void setupWorldTime() async{
    // String time = await WorldTime.getTime(url);
    WorldTime instance = WorldTime(
      location: 'Berlin',
      flag: 'germany.png',
      url: 'Europe/Berlin',
      // time: time,
    );
    await instance.getTime();
    Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => Home(worldTime: instance)),
    );

  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
