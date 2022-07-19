import 'package:flutter/material.dart';
import 'package:yellowcabweb/api/api_call.dart';
import 'package:yellowcabweb/constants/constants.dart';
import 'package:yellowcabweb/constants/utility.dart';
import 'package:yellowcabweb/model/CarTypeData.dart';
import 'package:yellowcabweb/model/CityData.dart';
import 'package:yellowcabweb/model/OnewayData.dart';
import 'package:yellowcabweb/model/RouteData.dart';
import 'package:yellowcabweb/screens/top_bar_menu.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;
  Cities? pickupCity;
  List<Cities>? pickup;
  dynamic oneway;
  String? pickupId;
  String? dropId;
  Oneway? way;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _scrollController.addListener(_scrollListener);
    print("init called");
    getPickup();
    getCarTypes();
    super.initState();
  }

  Widget buildPickupData(List<Cities> data) {
    return DropdownButton<Cities>(
      value: pickupCity,
      hint: const Text("Select Pickup"),
      isExpanded: true,
      icon: const Icon(Icons.keyboard_arrow_down),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: kBaseColor,
      ),
      onChanged: (Cities? newValue) {
        setState(() {
          pickupCity = newValue!;
          oneway = getOneway();
        });
        // if (dropCity == null) {
        // } else {
        //    oneway = getOneway();
        // }
      },
      items: data.map<DropdownMenuItem<Cities>>((Cities value) {
        return DropdownMenuItem<Cities>(
          value: value,
          child: Text(value.name.toString()),
        );
      }).toList(),
    );
  }

  Future getPickup() async {
    APICall apiCall = APICall();

    bool connectivityStatus = await Utility.checkConnectivity();
    if (connectivityStatus) {
      CityData cityData = await apiCall.getPickup();
      if (cityData.status!) {
        // print(cityData.message!);
        pickup = cityData.cities;
        setState(() {});
      } else {
        //  print(cityData.message!);
      }
    }
  }

  Widget dropBarList() {
    return Container(
      child: pickup != null
          ? buildPickupData(pickup!)
          : const Center(
              child: CircularProgressIndicator(
                color: kBaseColor,
              ),
            ),
    );
  }

  Future<List<Oneway>?> getOneway() async {
    if (pickupCity == null) {
      Utility.showToast("Please Select Pickup City");
      return null;
    } else {
      pickupId = pickupCity?.id.toString();
    }
    dropId = "0";

    APICall apiCall = APICall();
    List<Oneway>? list = [];
    bool connectivityStatus = await Utility.checkConnectivity();
    if (connectivityStatus) {
      OnewayData onewayData = await apiCall.getOneway(pickupId!, dropId!);
      if (onewayData.status!) {
        //print(routeData.message!);
        list = onewayData.oneway;
      } else {
        //print(routeData.message!);
      }
    }
    return list;
  }

  String searchString = "";
  TextEditingController searchController = TextEditingController();
  Widget searchBar() {
    return Container(
      height: 40,
      decoration: kServiceBoxItem,
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          setState(() {
            searchString = value;
          });
        },
        controller: searchController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            color: kBaseColor,
          ),
        ),
      ),
    );
  }

  Future<void> _refreshRoutes(BuildContext context) async {
    setState(() {
      //  routes = getRoute();
      oneway = getOneway();
    });
  }

  Widget allRoutes() {
    //print("All Routes");
    return Container(
      height: 700,
      child: RefreshIndicator(
        onRefresh: () => _refreshRoutes(context),
        color: kBaseColor,
        child: FutureBuilder(
          future: oneway,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(color: kBaseColor),
              );
            }
            if (snapshot.hasData) {
              //print("Has Data ${snapshot.data.length}");
              if (snapshot.data.length == 0) {
                return const Center(
                  child: Text('No Route Found'),
                );
              } else {
                return ListView.builder(
                  padding: const EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return snapshot.data[index].dropCity
                            .toString()
                            .toLowerCase()
                            .contains(searchString)
                        ? onewayCard(snapshot.data[index])
                        : const SizedBox.shrink();
                    return onewayCard(snapshot.data[index]);
                  },
                );
              }
            } else {
              return const Center(
                child: Text('No Route Found'),
              );
            }
          },
        ),
      ),
    );
  }

  Widget onewayCard(Oneway way) {
    return InkWell(
      onTap: () {
        // setState(() {
        //   this.way = way;
        // });
        _showMyDialog(way);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: kServiceBoxItem,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      way.dropCity!,
                      style: const TextStyle(color: Colors.black),
                    ))),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    "From:",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "\u{20B9} ${way.hatchback!}",
                    style: const TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: kServiceBoxItem.copyWith(color: kBaseColor),
                height: 40,
                width: 80,
                child: const Center(
                  child: Text(
                    "Book",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
//      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 90),
        child: TopBarMenu(),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10, bottom: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: kServiceBoxItem,
                        height: screenSize.height * 0.65,
                        width: screenSize.width,
                        //color: Colors.red,
                        child: Column(
                          children: [
                            dropBarList(),
                            pickupCity == null
                                ? const SizedBox.shrink()
                                : searchBar(),
                            const SizedBox(height: 10),
                            Flexible(
                                flex: 8,
                                child: pickupCity == null
                                    ? const SizedBox.shrink()
                                    : allRoutes()),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        height: screenSize.height * 0.5,
                        width: screenSize.width,
                        decoration: kServiceBoxItem,

                        // Text('This is a demo alert dialog.'),
                        // Text('Would you like to approve of this message?'),
                      )),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: kServiceBoxItem,
                    height: 200,
                    width: 200,
                  ),
                  Container(
                    decoration: kServiceBoxItem,
                    height: 200,
                    width: 200,
                  ),
                  Container(
                    decoration: kServiceBoxItem,
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget carTypeCard(Oneway oneway, String? carName, String? desc, String fare,
      String? ac, String? seat, String? bags) {
    return Container(
      color: kBaseColor,
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              "${oneway.pickupCity} To ${oneway.dropCity}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/${carName.toString().toLowerCase()}.png",
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      carName.toString(),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      desc.toString(),
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "\u{20B9} $fare",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // const SizedBox(height: 10),
                    // const Text(
                    //   "(Driver allowance included)",
                    //   style: TextStyle(fontSize: 8),
                    // ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          )
                        ],
                      ),
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: const Text(
                        "Book Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              ac == "1"
                  ? const Icon(
                      Icons.ac_unit,
                      size: 15,
                      color: Colors.black,
                    )
                  : const SizedBox.shrink(),
              const SizedBox(width: 5),
              ac == "1"
                  ? const Text(
                      "AC",
                      style: TextStyle(fontSize: 10),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(width: 5),
              const Icon(
                Icons.people,
                size: 15,
                color: Colors.black,
              ),
              const SizedBox(width: 5),
              Text(
                "$seat Seater",
                style: const TextStyle(fontSize: 10),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.luggage,
                size: 15,
                color: Colors.black,
              ),
              const SizedBox(width: 5),
              Text(
                "$bags Bags",
                style: const TextStyle(fontSize: 10),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  List<Cartype>? carTypes = [];

  void getCarTypes() async {
    APICall apiCall = APICall();
    bool connectivityStatus = await Utility.checkConnectivity();

    if (connectivityStatus) {
      CarTypeData carTypeData = await apiCall.getCarTypes();
      if (carTypeData.status!) {
        setState(() {
          carTypes = carTypeData.cartype;
        });
      }
    }
  }

  Future<void> _showMyDialog(Oneway way) async {
    return showDialog<void>(
      context: context,
      //barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(''),
          backgroundColor: Colors.transparent,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Routes route = Routes();
                        route.pickupCity = way.pickupCity;
                        route.pickupId = way.pickupId;
                        route.dropCity = way.dropCity;
                        route.dropId = way.dropId;
                        route.toll = way.toll;
                        route.totalFare = way.hatchback;
                        route.carName = carTypes?.elementAt(0).name.toString();
                        route.carType = carTypes?.elementAt(0).id.toString();

                        //Utility.showToast(way.hatchback!);
                      },
                      //child: carItem("hatchback", way.hatchback!),
                      child: carTypeCard(
                        way,
                        carTypes?.elementAt(0).name.toString(),
                        carTypes?.elementAt(0).description.toString(),
                        way.hatchback.toString(),
                        carTypes?.elementAt(0).ac.toString(),
                        carTypes?.elementAt(0).seat.toString(),
                        carTypes?.elementAt(0).bags.toString(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Routes route = Routes();
                        route.pickupCity = way.pickupCity;
                        route.pickupId = way.pickupId;
                        route.dropCity = way.dropCity;
                        route.toll = way.toll;
                        route.dropId = way.dropId;
                        route.totalFare = way.sedan;
                        route.carName = carTypes?.elementAt(1).name.toString();
                        route.carType = carTypes?.elementAt(1).id.toString();

                        // Utility.showToast(way.sedan!);
                      },
                      //child: carItem("sedan", way.sedan!),
                      child: carTypeCard(
                        way,
                        carTypes?.elementAt(1).name.toString(),
                        carTypes?.elementAt(1).description.toString(),
                        way.sedan.toString(),
                        carTypes?.elementAt(1).ac.toString(),
                        carTypes?.elementAt(1).seat.toString(),
                        carTypes?.elementAt(1).bags.toString(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Routes route = Routes();
                        route.pickupCity = way.pickupCity;
                        route.pickupId = way.pickupId;
                        route.dropCity = way.dropCity;
                        route.dropId = way.dropId;
                        route.toll = way.toll;
                        route.totalFare = way.suv;
                        route.carName = carTypes?.elementAt(2).name.toString();
                        route.carType = carTypes?.elementAt(2).id.toString();
                        //  Utility.showToast(way.suv!);
                      },
                      //child: carItem("suv", way.suv!),
                      child: carTypeCard(
                        way,
                        carTypes?.elementAt(2).name.toString(),
                        carTypes?.elementAt(2).description.toString(),
                        way.suv.toString(),
                        carTypes?.elementAt(2).ac.toString(),
                        carTypes?.elementAt(2).seat.toString(),
                        carTypes?.elementAt(2).bags.toString(),
                      ),
                    ),
                  ],
                )
                // Text('This is a demo alert dialog.'),
                // Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Close',
                style: TextStyle(color: kBaseColor),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
