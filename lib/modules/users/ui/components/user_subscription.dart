import 'package:apparence_kit/core/data/entities/subscription_entity.dart';
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/custom_card.dart';
import 'package:apparence_kit/core/widgets/custom_table.dart';
import 'package:apparence_kit/modules/users/models/user_profile.dart';
import 'package:apparence_kit/modules/users/ui/components/gift_subscription.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:intl/intl.dart';

class UserSubscriptionCard extends StatelessWidget {
  final UserProfile userProfileState;
  final OnGiftSubscription onGiftSubscription;

  const UserSubscriptionCard({
    super.key, 
    required this.userProfileState,
    required this.onGiftSubscription,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(HugeIcons.strokeRoundedPiggyBank, size: 16, color: context.colors.onSurface.withOpacityCpy(.6)),
              const SizedBox(width: 8),
              Expanded(
                child: Text("Subscription",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colors.onSurface.withOpacityCpy(.6),
                  )),
              ),
              Text(userProfileState.subscription?.status.name ?? "NONE",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: switch(userProfileState.subscription?.status) {
                    SubscriptionStatus.ACTIVE => Colors.green,
                    SubscriptionStatus.PAUSED => Colors.grey,
                    SubscriptionStatus.EXPIRED => Colors.orange,
                    SubscriptionStatus.CANCELLED => Colors.red,
                    SubscriptionStatus.LIFETIME => Colors.blue,
                    _ => context.colors.onSurface.withOpacityCpy(.6),
                  }
                )),
            ],
          ),
          const SizedBox(height: 12),
          if (userProfileState.subscription != null)
            CustomTable(
                separatorBuilder: () => const Divider(
                      color: Color(0xFFF2F2F2),
                      height: 1,
                    ),
                rowsHeight: 35,
                rows: [
                  CustomTableRow(
                    cells: [
                      CustomTableCell(
                        type: CustomTableCellExtType.fillRemaining,
                        child: Text(
                          "Creation date",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          DateFormat.yMMMd().format(userProfileState.subscription!.creationDate!),
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
                          "Last update date",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          DateFormat.yMMMd().format(userProfileState.subscription!.lastUpdateDate!),
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
                          "Period end date",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          DateFormat.yMMMd().format(userProfileState.subscription!.periodEndDate!),
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
                          "SKU ID",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          userProfileState.subscription!.skuId!,
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
                          "Store",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      CustomTableCell(
                        child: Text(
                          userProfileState.subscription!.store.name,
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          if (userProfileState.subscription == null)
            SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No subscription found",
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: context.colors.onSurface.withOpacityCpy(.6),
                    ),
                  ),
                  const SizedBox(height: 2),
                  TextButton(
                    onPressed: () => showGiftSubscriptionDialog(
                      context: context,
                      onGiftSubscription: onGiftSubscription, 
                    ), 
                    child: Text("Gift a subscription",
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: context.colors.grey2,
                        decoration: TextDecoration.underline,
                      )),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
