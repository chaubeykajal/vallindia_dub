import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_form_provider.dart';

class SelectNGOPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NGOProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Select NGO'),
          centerTitle: true,
        ),
        body: Stack(
            children: [
        Positioned.fill(
        child: Container(color: Colors.blueGrey,
        height: MediaQuery.of(context).size.height * 0.7,
        padding: EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<NGOProvider>(
                builder: (context, provider, _) {
                  return Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Select NGO: ${provider.selectedNGO ?? "None"}',
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Consumer<NGOProvider>(
                builder: (context, provider, _) {
                  return GridView.builder(
                    shrinkWrap: true,
                    itemCount: provider.ngoList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final NGO ngo = provider.ngoList[index];
                      return GestureDetector(
                        onTap: () {
                          provider.selectNGO(ngo.name);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Image.asset(
                                ngo.logoUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              ngo.name,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
    )])
      ),
    );
  }
}


// ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
//
// class UserForm extends StatefulWidget {
//   const UserForm({super.key});
//
//   @override
//   State<UserForm> createState() => _UserFormState();
// }
//
// class _UserFormState extends State<UserForm> {
//
//   @override
//   Widget build(BuildContext context) {
//     final mq = MediaQuery.of(context).size;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Select NGO"),
//       ),
//
//       body: Column(children: [
//         Container(
//           height: mq.height*20/100,width: mq.width*80/100,
//           decoration: BoxDecoration(),
//         )
//       ]),
//     );
//   }
// }
