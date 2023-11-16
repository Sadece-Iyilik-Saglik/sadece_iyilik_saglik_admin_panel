import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../core/base/view/base_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF273C66),
      appBar: AppBar(
        forceMaterialTransparency: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
            top: Radius.circular(
                30), // Dilediğiniz yuvarlaklık oranını belirleyebilirsiniz
          ),
        ),
        // elevation: 50,
        title: const Text(
          "Admin Paneli ",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              child: Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2018/04/18/18/56/user-3331256_1280.png'),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: buildSearchBar(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildSearchBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        color: Colors.grey,
        borderRadius: BorderRadius.circular(11), // Increase border radius here
      ),
      child: OutlinedButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        onPressed: () {
          // method to show the search bar
          showSearch(
            context: context,
            // delegate to customize the search bar
            delegate: CustomSearchDelegateWithDummyData(),
          );
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Search for a tenant',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildFollowableUser extends StatelessWidget {
  const BuildFollowableUser({
    super.key,
    required this.imageAssetLink,
    required this.tenantName,
    required this.name,
  });

  final String imageAssetLink;
  final String tenantName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shape: const CircleBorder(),
        ),
        onPressed: () {},
        child: CircleAvatar(
          radius: 26,
          backgroundColor: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: NetworkImage(imageAssetLink),
            ),
          ),
        ),
      ),
      title: Text(
        tenantName,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'CEO name',
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
      ),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xAB393939),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Follow',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class CustomSearchDelegateWithDummyData extends SearchDelegate {
// Demo list to show querying
  List<BuildFollowableUser> searchTerms = [
    const BuildFollowableUser(
      imageAssetLink: 'assets/images/logo/mavi_arge_logo.png',
      tenantName: 'google',
      name: 'Google',
    ),
    const BuildFollowableUser(
      imageAssetLink: 'assets/images/logo/mavi_arge_logo.png',
      tenantName: 'microsoft',
      name: 'Microsoft',
    ),
    const BuildFollowableUser(
      imageAssetLink: 'assets/images/logo/mavi_arge_logo.png',
      tenantName: 'apple',
      name: 'Apple',
    ),
    const BuildFollowableUser(
      imageAssetLink: 'assets/images/logo/mavi_arge_logo.png',
      tenantName: 'facebook',
      name: 'Facebook',
    ),
    const BuildFollowableUser(
      imageAssetLink: 'assets/images/logo/mavi_arge_logo.png',
      tenantName: 'X',
      name: 'X',
    ),
  ];
// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.tenantName.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit.tenantName);
      }
    }
    return Container(
      color: Colors.black, //
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            focusColor: Colors.black,
            title: Text(result),
          );
        },
      ),
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<BuildFollowableUser> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.tenantName.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return Container(
      color: Colors.black,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return result;
        },
      ),
    );
  }
}
