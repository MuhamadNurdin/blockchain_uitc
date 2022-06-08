import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter/services.dart';
import 'account_home_controller.dart';

class AccountHomePage extends GetView<AccountHomeController> {
  const AccountHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //HEADER
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GradientText(
              'Accounts',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              colors: const [
                Color.fromRGBO(121, 40, 202, 30),
                Color.fromRGBO(0, 112, 243, 30),
              ],
            ),
            const SizedBox(width: 100),
            Expanded(
              child: DropdownSearch<String>(
                selectedItem: "Account 1",
                items: const [
                  'Account 1',
                  'Account 2',
                ],
              ),
            ),
          ],
        ),
        const Divider(color: Colors.grey, endIndent: 1, indent: 1),
        const SizedBox(height: 20),
        //TEXT MAINNETS
        Container(
          alignment: Alignment.topLeft,
          child: const Text(
            'Mainnets',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          //   color: const Color(0xff001835),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/ethereum-eth.png'),
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  children: const [
                    SizedBox(height: 5),
                    Text('Ethereum', style: TextStyle(fontSize: 10)),
                    SizedBox(height: 10),
                    Text(
                      '0xb89cbadd41a78AcccFD1f6E999BC4391826FaeFC',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                child: const Icon(Icons.copy, size: 16.0),
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.grey),
                  minimumSize: MaterialStateProperty.all(
                    const Size(64, 36),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                onPressed: () {
                  Clipboard.setData(const ClipboardData(
                          text: "0xb89cbadd41a78AcccFD1f6E999BC4391826FaeFC"))
                      .then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Ethereum Token Copied')));
                  });
                },
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff001835),
            boxShadow: const [
              BoxShadow(color: Colors.blue, spreadRadius: 1),
            ],
          ),
          height: 50,
        ),

        //ETHERIUM

        const SizedBox(height: 20),
        Container(
          //   color: const Color(0xff001835),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/avalance.png'),
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  children: const [
                    SizedBox(height: 5),
                    Text('Avalanche C-Chain', style: TextStyle(fontSize: 10)),
                    SizedBox(height: 10),
                    Text(
                      '0xb89cbadd41a78AcccFD1f6E999BC4391826FaeFC',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                child: const Icon(Icons.copy, size: 16.0),
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.grey),
                  minimumSize: MaterialStateProperty.all(
                    const Size(64, 36),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                onPressed: () {
                  Clipboard.setData(const ClipboardData(
                          text: "0xb89cbadd41a78AcccFD1f6E999BC4391826FaeFC"))
                      .then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Avalance C-Chain Token Copied')));
                  });
                },
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff3c0216),
            boxShadow: const [
              BoxShadow(color: Colors.redAccent, spreadRadius: 1),
            ],
          ),
          height: 50,
        ),
        //AVALANCE

        const SizedBox(height: 20),
        Container(
          //   color: const Color(0xff001835),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/polygon.jpg'),
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  children: const [
                    SizedBox(height: 5),
                    Text('Polygon', style: TextStyle(fontSize: 10)),
                    SizedBox(height: 10),
                    Text(
                      '0xb89cbadd41a78AcccFD1f6E999BC4391826FaeFC',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                child: const Icon(Icons.copy, size: 16.0),
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.grey),
                  minimumSize: MaterialStateProperty.all(
                    const Size(64, 36),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                onPressed: () {
                  Clipboard.setData(const ClipboardData(
                          text: "0xb89cbadd41a78AcccFD1f6E999BC4391826FaeFC"))
                      .then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Polygon Token Copied')));
                  });
                },
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff1c0631),
            boxShadow: const [
              BoxShadow(color: Colors.purple, spreadRadius: 1),
            ],
          ),
          height: 50,
        ),
        //POLYGON
        const SizedBox(height: 20),
        Container(
          //   color: const Color(0xff001835),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/cosmos.png'),
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  children: const [
                    SizedBox(height: 5),
                    Text('Cosmos Hub', style: TextStyle(fontSize: 10)),
                    SizedBox(height: 10),
                    Text(
                      'cosmos1393fsrlcu4m852gu4mknszwc7d7008056g0dc2',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                child: const Icon(Icons.copy, size: 16.0),
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.grey),
                  minimumSize: MaterialStateProperty.all(
                    const Size(64, 36),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                onPressed: () {
                  Clipboard.setData(const ClipboardData(
                          text:
                              "cosmos1393fsrlcu4m852gu4mknszwc7d7008056g0dc2"))
                      .then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Cosmos Hub Token Copied')));
                  });
                },
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff16272e),
            boxShadow: const [
              BoxShadow(color: Colors.blueGrey, spreadRadius: 1),
            ],
          ),
          height: 50,
        ),
        //COSMOS HUB
        const SizedBox(height: 20),
        Container(
          //   color: const Color(0xff001835),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/solana.jpg'),
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  children: const [
                    SizedBox(height: 5),
                    Text('Solana', style: TextStyle(fontSize: 10)),
                    SizedBox(height: 10),
                    Text(
                      '6rUwTqMwXMMw45TEYswfJAsAs2CFP7VrWgMuHQCyUS2g',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                child: const Icon(Icons.copy, size: 16.0),
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.grey),
                  minimumSize: MaterialStateProperty.all(
                    const Size(64, 36),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                onPressed: () {
                  Clipboard.setData(const ClipboardData(
                          text:
                              "cosmos1393fsrlcu4m852gu4mknszwc7d7008056g0dc2"))
                      .then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Solana Token Copied')));
                  });
                },
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff033116),
            boxShadow: const [
              BoxShadow(color: Colors.greenAccent, spreadRadius: 1),
            ],
          ),
          height: 50,
        ),
        //SOLANA
      ])
    ]);
  }
}
