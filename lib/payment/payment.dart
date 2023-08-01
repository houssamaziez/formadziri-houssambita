import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Model/sessions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_autocomplete_formfield/simple_autocomplete_formfield.dart';

import '../BDD/Controllers/AllGetdata.dart';
import '../BDD/Model/Courses.dart';
import 'form.dart';

class Payment extends StatefulWidget {
  const Payment(
      {Key? key, required this.goupe, required this.price, required this.data})
      : super(key: key);
  final String goupe, price;
  final Course data;
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isCheckboxChecked = false;
  bool isCheckboxChecked1 = false;
  int radioBtn = 0;
  List<String>? sList;

  @override
  void initState() {
    fetchAndSetSubCategories();

    sList = List<String>.from(json.decode(widget.data.teacher!.daysAvailable!));
    super.initState();
  }

  List<sessions> datasessions = [];
  Future<void> fetchAndSetSubCategories() async {
    try {
      List<sessions> session =
          await GetDattApi().getSessionData(widget.data.id!);
      print('${session.length}');

      setState(() {
        datasessions = session;
      });
    } catch (error) {
      print('Error fetching subcategories: $error');
    }
  }

  // String getSessionDataAsString() {
  //   if (datasessions.isNotEmpty) {
  //     String groupTime = datasessions[0].inGroup == widget.data.group
  //         ? datasessions[0].startTime!
  //         : datasessions[0].startTime!;

  //     return "${sList!.join(", and ")}\n $groupTime";
  //   }
  //   return "${sList!.join(", and ")}";
  // }

  @override
  Widget build(BuildContext context) {
    print(datasessions);
    print(widget.data.id);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 10),
          child: ListView(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  "https://formadziri-admin.com/${widget.data.image!}",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                child: Text(
                  widget.data.title!,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      const Color(0xFF93BD8F), // Set the desired text color
                  side: const BorderSide(
                    color: Color(0xFF93BD8F),
                    width: 2,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  widget.goupe,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: Color(0xAA0E1F12),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "${widget.data.durationWeeks} weeks",
                    style: GoogleFonts.poppins(
                      color: const Color(0xAA0E1F12),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 4),
                child: Text(
                  widget.price,
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    color: const Color(0xFF93BD8F),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 6),
                child: Text(
                  "Groups:",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              AutocompleteForm(
                [
                  for (sessions sesion in datasessions)
                    "${sList!.join(", and ")}\n ${sesion.startTime}"
                ],
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PayForm(); //
                      },
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 207, 229, 205),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "Send the request",
                    style: GoogleFonts.poppins(
                      color: const Color(0xAA0E1F12),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Column newMethod(value) {
  //   return Column(
  //     children: [
  //       Row(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Expanded(
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   sList!.join(", and "),
  //                   maxLines: 3,
  //                   style: GoogleFonts.poppins(
  //                     fontSize: 15,
  //                     color: Colors.black,
  //                     fontWeight: FontWeight.w600,
  //                   ),
  //                 ),
  //                 Text(
  //                   "${widget.data.curriculum}",
  //                   style: GoogleFonts.poppins(
  //                     fontSize: 18,
  //                     color: const Color(0xFF93BD8F),
  //                     fontWeight: FontWeight.w800,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Row(
  //             children: [
  //               Text(
  //                 "10 Spots left",
  //                 style: GoogleFonts.poppins(
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w500,
  //                 ),
  //               ),
  //               Radio<int>(
  //                 activeColor: const Color(0xFF93BD8F),
  //                 value: value,
  //                 groupValue: radioBtn,
  //                 onChanged: (int? value) {
  //                   setState(() {
  //                     radioBtn = value!;
  //                   });
  //                 },
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
}

class AutocompleteForm extends StatefulWidget {
  final List<String> groupList;
  AutocompleteForm(this.groupList);
  @override
  _AutocompleteFormState createState() => _AutocompleteFormState();
}

class _AutocompleteFormState extends State<AutocompleteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SimpleAutocompleteFormField<String>(
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Select an option',
          ),
          itemBuilder: (context, option) => ListTile(title: Text(option!)),
          onSearch: (searchTerm) async => _getSuggestions(searchTerm),
          onChanged: (option) => setState(() => _selectedOption = option!),
        ),
      ),
    );
  }

  var listgroup = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  Future<List<String>> _getSuggestions(String searchTerm) async {
    await Future.delayed(Duration(milliseconds: 300));
    return widget.groupList
        .where(
            (option) => option.toLowerCase().contains(searchTerm.toLowerCase()))
        .toList();
  }
}
