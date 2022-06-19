import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/character.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/constants/app_styles.dart';
import 'package:flutter_application_1/generated/l10n.dart';

import '../constants/app_assets.dart';

class CharacterListTile extends StatelessWidget {
  const CharacterListTile(this.char, {Key? key}) : super(key: key);

  final Character char;

  Color _statusColor(String? status) {
    if (status == 'Dead') return AppColors.statusDead;
    if (status == 'Alive') return AppColors.statusAlive;
    return Colors.grey;
  }

  String _statusLabel(String? status) {
    if (status == 'Dead') return S.current.dead;
    if (status == 'Alive') return S.current.alive;
    return S.current.unknown;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(12.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(AppAssets.images.noAvatar),
            radius: 60.0,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _statusLabel(char.status).toUpperCase(),
                      style: AppStyles.s10w500.copyWith(
                        letterSpacing: 1.5,
                        color: _statusColor(
                          char.status,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      char.name ?? S.of(context).unknown,
                      style: AppStyles.s16w500.copyWith(
                        height: 1.6,
                        leadingDistribution: TextLeadingDistribution.even,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${char.species ?? S.of(context).unknown}, ${char.gender ?? S.of(context).unknown}',
                      style: const TextStyle(
                        color: AppColors.neutral2,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
