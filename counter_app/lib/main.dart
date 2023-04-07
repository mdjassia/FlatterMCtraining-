import 'package:flutter/material.dart';

void main() {
  runApp(
      const  MaterialApp(
          debugShowCheckedModeBanner: false,
          home:   MyApp()
      ),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0 ;
  void increment (count){
    setState(() {
      this.count+=1 ;
    });
  }
  void decrement(count){
    setState(() {
      this.count -=1 ;
    });
  }
  void  restor(count) {
    setState(() {
      this.count=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(

        //mainAxisAlignment: MainAxisAlignment.start,


        children : [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 70, 0, 10),
            child: Text('Counter App' ,style: TextStyle(fontSize: 40 , color: Colors.orange[700]),),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 200),
            child:const  Text("With our simple counter app,you can \n easily track your progress \n towards any goal" ,
              style:  TextStyle(
                fontSize: 18 ,
                color: Colors.grey ,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton( onPressed:()=> decrement(count),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFF57C00)),
                    shape: MaterialStateProperty.all(const CircleBorder( ))
                ),
                child:const  Icon(Icons.remove) ,

              ),

              Container(
                  child:  Text('$count ', style: const TextStyle(
                    fontSize: 20 ,
                    color: Colors.grey ,
                  ), )
              ),
              ElevatedButton(
                onPressed:()=> increment(count),
                style: ButtonStyle(

                    backgroundColor: MaterialStateProperty.all(const Color(0xFFF57C00)),
                    shape : MaterialStateProperty.all(const CircleBorder())
                ),
                child:const Icon(Icons.add),
              ),

            ],
          ),
          Container(
            margin: const  EdgeInsets.fromLTRB(0, 100, 0, 0),
            height: 50,
            width: 130,
            child: ElevatedButton(
              onPressed:()=> restor(count),
              style: ButtonStyle(
                  backgroundColor:  MaterialStateProperty.all(const Color(0xFFF57C00)),
                  shape : MaterialStateProperty.all(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)))
              ),
              child: Row(  children: const [
                 Text("restor  " , style:  TextStyle(fontSize: 22),) ,
                 Icon(Icons.restore)]
              ),
            ),
          )
        ]
      ),

    );
  }
}

