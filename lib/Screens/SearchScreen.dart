import 'package:flutter/material.dart';
import 'package:flutter_forward_extended/Components/formField.dart';
import 'package:flutter_forward_extended/Network/api_response.dart';
import 'package:flutter_forward_extended/Screens/Weather.dart';

import '../Constants.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchLocation searchInstance = SearchLocation();
  ApiResponse apiInstance = ApiResponse();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: nightPrimary,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: const Text('title'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            formField(
                size: size,
                text: 'search city',
                isPassword: false,
                onChanged: (String city) async {
                  await searchInstance.getLoc(city);
                  setState(() {});
                }
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchInstance.locData.length,
                itemBuilder: (context, index){

                  debugPrint('${searchInstance.locData.length}');
                  Map cityCard = searchInstance.locData[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10.0),
                        onTap: () async {
                          await apiInstance.getLocation(cityCard['lat'].toString(), cityCard['lon'].toString());
                          debugPrint('tapped');
                          _pushToNewScreen();
                        },
                        child: ListTile(
                          title: Text('${cityCard['name']}, ${cityCard['country']}'),
                          subtitle: Text(cityCard['state'] ?? ''),
                        ),
                      ),
                    ),
                  );
                }
            ),
            )

          ],
        ),
      ),
    );
  }

  _pushToNewScreen(){
    //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const Weather()), (route) => false);
  }
}
