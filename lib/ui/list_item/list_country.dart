import 'package:flutter/material.dart';
import 'package:test_app/ui/list_item/widgets/country_card.dart';

class ListCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
            child: CountryCard(image: '1', name: 'Germany', population: '3', region: 'Europe', capital: 'Capital'),
          );
        }

    );
  }
}
