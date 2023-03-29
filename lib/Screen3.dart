import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: button(),
      body:
      SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.06,
                child: Center(child: header())),
              Expanded(
                child: Container(
                  decoration: tableDecoration(),
                  child: table()
                ),
              ),
              const SizedBox(height: 20.0),


            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton button(){
    return const FloatingActionButton(
      onPressed: null,
      backgroundColor: Colors.blueGrey,
      child: Icon(Icons.add_task),
    );
  }

  Text header(){
    return const Text('List of Courses',
        style: TextStyle(
            fontSize: 36.0,
            color: Colors.white,
            fontWeight: FontWeight.bold)
    );
  }

  BoxDecoration tableDecoration() {
    return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)
        )
    );
  }

 ListView table(){
   bool? isCheacked =false ;
   return ListView(
      children: [
        ListTile(
          selectedColor: Colors.grey,
          title: Text('image processing'),
          trailing: Checkbox(
            activeColor: Colors.blue,
              value: false ,
              onChanged: (newValue){
              setState(() {
                isCheacked = newValue;

              });
              }),
        ),
      ],
    );
 }

}
