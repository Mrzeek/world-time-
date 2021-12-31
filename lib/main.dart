import 'package:flutter/material.dart';
import 'package:world_time/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
      },
    ));
