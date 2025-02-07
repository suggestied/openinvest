import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/custom_card.dart';
import 'package:apparence_kit/core/widgets/custom_table.dart';
import 'package:apparence_kit/modules/users/models/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class UserOnboardingData extends StatelessWidget {
  final UserProfile userProfileState;

  const UserOnboardingData({super.key, required this.userProfileState});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(HugeIcons.strokeRoundedAnalytics01, size: 16, color: context.colors.onSurface.withOpacityCpy(.6)),
              const SizedBox(width: 8),
              Text("User onboarding answers",
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
            rows: userProfileState.userOnboardingData.entries
                .map(
                  (entry) => CustomTableRow(
                    cells: [
                      CustomTableCell(
                        type: CustomTableCellExtType.fillRemaining,
                        child: Text(
                          entry.key,
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          entry.value,
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ).toList(),
          ),
          if (userProfileState.userOnboardingData.entries.isEmpty)
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "No answers found",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: context.colors.onSurface.withOpacityCpy(.6),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
