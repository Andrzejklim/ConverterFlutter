import 'package:flutter/material.dart';


class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState() => _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State{
  
  final TextEditingController textEditingController = TextEditingController();

  double result = 0;

    void calculateResult(){
      setState(() {
      result = double.parse(textEditingController.text) * 4.5; 
      });
    }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} PLN",
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please enter the amount  USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15,),
              ElevatedButton(
                  onPressed: calculateResult,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      // padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
                      minimumSize: const Size(double.infinity, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  child: const Text('Convert'))
            ],
          ),
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPage extends StatelessWidget {
//   CurrencyConverterMaterialPage({super.key});

//   final TextEditingController textEditingController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final border = OutlineInputBorder(
//         borderSide: const BorderSide(
//           color: Colors.black,
//           width: 2,
//         ),
//         borderRadius: BorderRadius.circular(5));

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: const Text(
//           "Currency Converter",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: const TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: textEditingController,
//                 style: const TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: "Please enter the amount  USD",
//                   hintStyle: const TextStyle(
//                     color: Colors.black,
//                   ),
//                   prefixIcon: const Icon(Icons.monetization_on_outlined),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                   onPressed: () {
//                     result = double.parse(textEditingController.text) * 4.5;
//                   },
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       // padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
//                       minimumSize: const Size(double.infinity, 50),
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       )),
//                   child: const Text('Convert')),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
