import 'package:flutter/material.dart';
import 'package:formadziri/payment/done.dart';
import 'package:formadziri/payment/fields.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class PayForm extends StatefulWidget {
  const PayForm({Key? key}) : super(key: key);

  @override
  State<PayForm> createState() => _PayFormState();
}

class _PayFormState extends State<PayForm> {
  bool isCheckboxChecked = false;
  int paymentOption = 0;
  bool maxChar = true;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final cityController = TextEditingController();
  final notesController = TextEditingController();
  final transactionController = TextEditingController();

  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment form",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
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
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 18, right: 18, top: 0, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    border: Border(
                      top: BorderSide(
                        color: Color.fromARGB(255, 207, 229, 205),
                        width: 2,
                      ),
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 207, 229, 205),
                        width: 2,
                      ),
                      right: BorderSide(
                        color: Color.fromARGB(255, 207, 229, 205),
                        width: 2,
                      ),
                      left: BorderSide(
                        color: Color.fromARGB(255, 207, 229, 205),
                        width: 2,
                      ),
                    ),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 12,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.asset(
                                    "images/crs/41.png",
                                    height: 100,
                                  ),
                                ),
                                Text(
                                  "Level A1 English (Beginner)",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                          child: VerticalDivider(
                            color: Color.fromARGB(255, 207, 229, 205),
                            thickness: 2,
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total:",
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                "9000 DZD",
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  color: const Color(0xFF93BD8F),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: BouncingScrollSimulation.maxSpringTransferVelocity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    border: Border(
                      top: BorderSide(
                          color: Color.fromARGB(255, 207, 229, 205), width: 0),
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 207, 229, 205), width: 2),
                      right: BorderSide(
                          color: Color.fromARGB(255, 207, 229, 205), width: 2),
                      left: BorderSide(
                          color: Color.fromARGB(255, 207, 229, 205), width: 2),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Method:",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Radio<int>(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              activeColor: const Color(0xFF93BD8F),
                              value: 1,
                              groupValue: paymentOption,
                              onChanged: (int? value) {
                                setState(() {
                                  paymentOption = value!;
                                });
                              },
                            ),
                            Text(
                              "Carte CIB",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image.asset(
                              "images/cib.png",
                              height: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Radio<int>(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              activeColor: const Color(0xFF93BD8F),
                              value: 2,
                              groupValue: paymentOption,
                              onChanged: (int? value) {
                                setState(() {
                                  paymentOption = value!;
                                });
                              },
                            ),
                            Text(
                              "Edahabia",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image.asset(
                              "images/poste.png",
                              height: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Radio<int>(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              activeColor: const Color(0xFF93BD8F),
                              value: 3,
                              groupValue: paymentOption,
                              onChanged: (int? value) {
                                setState(() {
                                  paymentOption = value!;
                                });
                              },
                            ),
                            Text(
                              "BaridiMob",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image.asset(
                              "images/baridi.png",
                              height: 30,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(const ClipboardData(
                              text: "00799999002374828702",
                            ));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'BaridiMob RIP is copied to the clipboard')),
                            );
                          },
                          child: Visibility(
                            visible: paymentOption ==
                                3, // Show the container when BaridiMob is selected
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0x9793BD8F),
                                  borderRadius: BorderRadius.circular(6)),

                              margin: const EdgeInsets.only(
                                  top: 4,
                                  left: 0), // Adjust the margin as needed
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8, top: 8, left: 10, right: 10),
                                child: Text(
                                  "00799999002374828702",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Radio<int>(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              activeColor: const Color(0xFF93BD8F),
                              value: 4,
                              groupValue: paymentOption,
                              onChanged: (value) {
                                setState(() {
                                  paymentOption = value!;
                                });
                              },
                            ),
                            Text(
                              "CCP",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image.asset(
                              "images/cib.png",
                              height: 30,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(const ClipboardData(
                              text: "0023748287 02 MERDAOUI MOHAMED EL AMINE",
                            ));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'CCP account is copied to the clipboard')),
                            );
                          },
                          child: Visibility(
                            visible: paymentOption ==
                                4, // Show the container when BaridiMob is selected
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0x9793BD8F),
                                  borderRadius: BorderRadius.circular(6)),

                              margin: const EdgeInsets.only(
                                  top: 4,
                                  left: 0), // Adjust the margin as needed
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8, top: 8, left: 10, right: 10),
                                child: Text(
                                  "0023748287 02 MERDAOUI MOHAMED EL AMINE",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              activeColor: const Color(0xFF93BD8F),
                              value: isCheckboxChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckboxChecked = value ?? false;
                                });
                              },
                            ),
                            Expanded(
                              child: Text(
                                "I would like to receive exclusive emails with discounts and product information (optional).",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Your personal data will be used to process your order, to accompany you during your stay in the app, and for other reasons described in our",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: " privacy policy.",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: const Color(0xFF93BD8F),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4, left: 6),
                  child: Text(
                    "Name:",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Fields(controller: nameController, hintText: ""),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4, left: 6),
                  child: Text(
                    "Email:",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Fields(controller: emailController, hintText: ""),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4, left: 6),
                  child: Text(
                    "Phone Number:",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Fields(controller: numberController, maxChar: 10, hintText: ""),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4, left: 6),
                  child: Text(
                    "City:",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Fields(controller: cityController, hintText: ""),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4, left: 6),
                  child: Text(
                    "Transaction number:",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Fields(
                    controller: transactionController,
                    maxChar: 12,
                    hintText: ""),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 4, left: 6),
                  child: Text(
                    "Payment proof:",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: Container(
                    width: 500,
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 207, 229, 205),
                          width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      Image.asset(
                        "images/shares.png",
                        color: const Color(0xFF93BD8F),
                        width: 60,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Upload the receipt",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF93BD8F),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(height: 18),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Done(); //
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
                      "Submit",
                      style: GoogleFonts.poppins(
                        color: const Color(0xAA0E1F12),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
