import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/custom_card.dart';
import 'package:apparence_kit/core/widgets/custom_table.dart';
import 'package:apparence_kit/modules/users/models/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:intl/intl.dart';

class UserInformationsCard extends StatelessWidget {
  final UserProfile userProfileState;

  const UserInformationsCard({super.key, required this.userProfileState});

  @override
  Widget build(BuildContext context) {
    final userCreationDate = userProfileState.user.map(
      authenticated: (e) => e.creationDate,
      anonymous: (e) => e.creationDate,
      loading: (_) => null,
    );
    final lastUpdateDate = userProfileState.user.map(
      authenticated: (e) => e.lastUpdateDate,
      anonymous: (e) => e.lastUpdateDate,
      loading: (_) => null,
    );

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(HugeIcons.strokeRoundedUserAccount, size: 16, color: context.colors.onSurface.withOpacityCpy(.6)),
              const SizedBox(width: 8),
              Text("Informations",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colors.onSurface.withOpacityCpy(.6),
                  )),
            ],
          ),
          const SizedBox(height: 12),
          CustomTable(
              separatorBuilder: () => const Divider(
                    color: Color(0xFFF2F2F2),
                    height: 1,
                  ),
              rowsHeight: 35,
              rows: [
                if(userCreationDate != null)
                  CustomTableRow(
                    cells: [
                      CustomTableCell(
                        type: CustomTableCellExtType.fillRemaining,
                        child: Text(
                          'Creation date',
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          DateFormat.yMMMd().format(userCreationDate),
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                if(lastUpdateDate != null)
                  CustomTableRow(
                    cells: [
                      CustomTableCell(
                        type: CustomTableCellExtType.fillRemaining,
                        child: Text(
                          'Last update date',
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          DateFormat.yMMMd().format(lastUpdateDate),
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                CustomTableRow(
                    cells: [
                      CustomTableCell(
                        type: CustomTableCellExtType.fillRemaining,
                        child: Text(
                          'Device(s)',
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          userProfileState.devices.length.toString(),
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                CustomTableRow(
                    cells: [
                      CustomTableCell(
                        type: CustomTableCellExtType.fillRemaining,
                        child: Text(
                          'Platform(s)',
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          userProfileState.devices.map((e) => e.platform.name).toSet().join(', '),
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
              ]),
        ],
      ),
    );
  }
}
