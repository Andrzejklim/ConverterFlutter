import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();

  

}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

    void calculateResult(){
      setState(() {
      result = double.parse(textEditingController.text) * 4.5; 
      });
    }

  @override
  Widget build(BuildContext context) {
    // final border = OutlineInputBorder(
    //     borderSide: const BorderSide(
    //       color: Colors.black,
    //       width: 2,
    //     ),
    //     borderRadius: BorderRadius.circular(5));

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar:const CupertinoNavigationBar(
        middle: Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: Center(
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
                    color: CupertinoColors.white),
              ),
              CupertinoTextField(
                placeholder: "Please enter the amount USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                border: Border.all(),
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(5)),
                // InputDecoration(
                //   hintText: "Please enter the amount  USD",
                //   hintStyle: const TextStyle(
                //     color: Colors.black,
                //   ),
                //   prefixIcon: const Icon(Icons.monetization_on_outlined),
                //   prefixIconColor: Colors.black,
                //   filled: true,
                //   fillColor: Colors.white,
                //   focusedBorder: border,
                //   enabledBorder: border,
                // ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15,),
              CupertinoButton(
                  onPressed: calculateResult,
                  color: CupertinoColors.black,
                  // style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.black,
                  //     foregroundColor: Colors.white,
                  //     // padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
                  //     minimumSize: const Size(double.infinity, 50),
                  //     shape: const RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.all(Radius.circular(10)),
                  //     )),
                  child: const Text('Convert'))
            ],
          ),
        ),
      ),
    );
  }
  }
