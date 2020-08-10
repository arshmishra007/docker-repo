import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
String dirname;
web(dirname) async
{
  var url = "http://192.168.43.16/cgi-bin/one.py?x=${dirname}";
  var r = await http.get(url);
  print(r.body);
}


createrepo()
{
  var mybody =Container(
  height: double.infinity,
  width: double.infinity,
  color:Colors.blue[200],
  child: Center(
    child: Container(
      height: 450,
      width: 400,
      color: Colors.amber,

      child: Column(children: <Widget>[

         Container(
          height: 150,
          width: 180,
          margin: EdgeInsets.only(top:7),

          decoration: BoxDecoration(
             image: DecorationImage(
                image: NetworkImage('https://raw.githubusercontent.com/arshmishra007/Myimage/master/dockerimg.png'),
                    fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(65),
              
            ),

        ),

         Card(
           margin: EdgeInsets.symmetric(vertical:20,horizontal:4),
           child: TextField(
             onChanged: (val)
             {
               dirname=val;
             },
             decoration: InputDecoration(
               hintText: "Enter Your directory Name",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(5),
                 borderSide: BorderSide(color: Colors.amber,style: BorderStyle.solid,),
               )
             ),
           ),
        

        ),

         Card(
          child: FlatButton(
            onPressed: ()
            {
              web(dirname);
            },
            child: Text("Create Repository"),
          ),
        )
      ],),
    ),
  )


  );

    return MaterialApp(
     
     home:Scaffold(appBar: AppBar(title: Text("Server Application"),),
     body: mybody,)




  );
}