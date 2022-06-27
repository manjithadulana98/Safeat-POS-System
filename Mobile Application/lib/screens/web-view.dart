import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(Webview());
}

class Webview extends StatefulWidget {
  const Webview({Key? key}) : super(key: key);

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 16, 132, 22),
        title: const Text('Safeat'),
      ),
      body: Container(
        child: const WebView(
          initialUrl: "http://192.168.8.170/",
          javascriptMode: JavascriptMode.unrestricted,
        ), 
      ),
    
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        // add the refresh button
        FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 16, 132, 22),
          onPressed: () {
            //navigation button

            Navigator.pushNamed(context, "/web"
            );
          },
          child: const Icon(Icons.refresh),
        ),
        FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 16, 132, 22),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ]),
    );
  }
}

