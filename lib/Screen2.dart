import 'package:flutter/material.dart';
import 'package:untitled4/Screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<Map<String, dynamic>> data = [
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
    {'Id': 36845612253366, 'Name': 'Menna'},
    {'Id': 12345678945216, 'Name': 'May'},
    {'Id': 85671934568726, 'Name': 'Halim'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: buttons(),
      body: SafeArea(
        child: Container(
           width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06, child: tableHeader()),
              Expanded(
                child: Container(
                  decoration: tableDecoration(),
                  child: list(),
                ),
              ),
              const SizedBox(height: 20.0),

            ],
          ),
        ),
      ),
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

  Row tableHeader() {
    return Row(
      children: const [
        Expanded(
            child: Text('Id',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
                textAlign: TextAlign.center)),
        Expanded(
            child: Text('Name',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
                textAlign: TextAlign.center)),
      ],
    );
  }

  ListView list() {
    return ListView.separated(
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                  child: Text(data[index]['Id'].toString(),
                      textAlign: TextAlign.center)),
              Expanded(
                  child:
                  Text(data[index]['Name'], textAlign: TextAlign.center)),
            ],
          );
        });
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        swapButton(),
        dialogButton(),
      ],
    );
  }
  FloatingActionButton swapButton() {
    return const FloatingActionButton(
      onPressed: null,
      backgroundColor: Colors.blueGrey,
      child: Icon(Icons.cached),
    );
  }
  FloatingActionButton dialogButton() {
    return FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.open_in_new),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(
                  title: const Text('Add'),
                  actions: [
                    TextButton(
                        onPressed: () {},
                        child: const Text('Create new course')),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Screen3()),
                          );
                        },
                        child: const Text('Add to existing course')),
                  ],
                ),
          );
        });
  }
}
