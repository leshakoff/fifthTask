import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_styles.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_application_1/ui/characters_screen/widgets/search_field.dart';

import '../../classes/character.dart';
import '../../widgets/app_nav_bar.dart';
import 'widgets/characters_grid_tile.dart';
import 'widgets/characters_list_tile.dart';

part 'widgets/_grid_view.dart';
part 'widgets/_list_view.dart';

class CharactersList extends StatefulWidget {
  const CharactersList({Key? key}) : super(key: key);

  @override
  State<CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
  var isListView = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(4.0),
      child: Scaffold(
        bottomNavigationBar: const AppNavBar(current: 0),
        body: Column(
          children: [
            const SearchField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      S
                          .of(context)
                          .charactersTotal(_charactersList.length)
                          .toUpperCase(),
                      style: AppStyles.s10w500.copyWith(
                        letterSpacing: 1.5,
                        color: AppColors.neutral2,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(isListView ? Icons.list : Icons.grid_view),
                    iconSize: 28.0,
                    color: AppColors.neutral2,
                    onPressed: () {
                      setState(() {
                        isListView = !isListView;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: isListView
                  ? _ListView(charactersList: _charactersList)
                  : _GridView(charactersList: _charactersList),
            ),
          ],
        ),
      ),
    );
  }
}

final _list = [
  const Character(
    name: 'Рик Санчез',
    species: 'Человек',
    status: 'Alive',
    gender: 'Мужской',
  ),
  const Character(
    name: 'Алан Райс',
    species: 'Человек',
    status: 'Dead',
    gender: 'Мужской',
  ),
  const Character(
    name: 'Саммер Смит',
    species: 'Человек',
    status: 'Alive',
    gender: 'Женский',
  ),
  const Character(
    name: 'Морти Смит',
    species: 'Человек',
    status: 'Alive',
    gender: 'Мужской',
  ),
];

final _charactersList = [
  ..._list,
  ..._list,
  ..._list,
  ..._list,
];
