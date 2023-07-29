import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Controllers/test2.dart';
import 'package:formadziri/mainpages/searchdata.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../BDD/Model/home.dart';
import '../comp/search_row.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Category> filteredSearchItems = [];
  List<Category> searchItems = [];
TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    fetchAndSetSubCategories();
  }

 Future<void> fetchAndSetSubCategories() async {
    try {
      List<Category> subCategories = await GetDattApi().getCategorie();
      setState(() {
        searchItems = subCategories;
        filteredSearchItems = subCategories; 
      });
    } catch (error) {
      print('Error fetching subcategories: $error');
    }
  }

  void _filterSearchResults(String query) {
    List<Category> tempList = [];
    if (query.isNotEmpty) {
      tempList = searchItems
          .where(
              (item) => item.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      tempList = searchItems;
    }
    setState(() {
      filteredSearchItems = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Text("search",
            //AppLocalizations.of(context).search,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 24)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
             Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextField(
                 controller: searchController,
                  onChanged: _filterSearchResults,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 14),
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: "Find your next course",
                  hintStyle: TextStyle(color: Color(0xFF6D8A6B)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xffCFE5CD),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xffCFE5CD),
                      width: 2,
                    ),
                  ),
                  fillColor: Color(0xffCFE5CD),
                  filled: true,
                ),
                cursorColor: Color.fromARGB(255, 109, 138, 107),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Check these out!",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 0,
                children: List.generate(filteredSearchItems.length, (index) {
                  return GestureDetector(
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchData(
                    dataSub: filteredSearchItems[index],
                  ),
                ),
              );
            },
                    child: Container(
                    
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: SearchRow(
                            title: filteredSearchItems[index].name!,
                            image:
                                "https://formadziri-admin.com/${filteredSearchItems[index].image}",
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
      
            // const SearchRow(
            //   title1: "UI Design",
            //   photo1: "images/srch/ui.png",
            //   title2: "Progamming",
            //   photo2: "images/srch/pro.png",
            // ),
            // const SizedBox(
            //   height: 12,
            // ),
            // const SearchRow(
            //   title1: "Languages",
            //   photo1: "images/srch/lang.png",
            //   title2: "Photography",
            //   photo2: "images/srch/pht.png",
            // ),
            // const SizedBox(
            //   height: 12,
            // ),
            // const SearchRow(
            //   title1: "Marketing",
            //   photo1: "images/srch/mar.png",
            //   title2: "Animation",
            //   photo2: "images/srch/ani.png",
            // ),
            // const SizedBox(
            //   height: 12,
            // ),
            // const SearchRow(
            //   title1: "Montage",
            //   photo1: "images/srch/mon.png",
            //   title2: "Film Making",
            //   photo2: "images/srch/fm.png",
            // ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
