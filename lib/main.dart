import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(){
  runApp(
    MaterialApp(
      home : HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor : Colors.purple,
        title : Text('Code_Factory'),
        centerTitle : true,
        actions : [
          IconButton(
            onPressed : (){
              if(controller != null) {
                controller!.loadUrl("https://blog.codefactory.ai");
              }
            },
            icon : Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body : WebView(
        onWebViewCreated: (WebViewController controller){
          this.controller = controller;
        },
        initialUrl : 'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
