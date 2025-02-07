import 'package:apparence_kit/core/components/data_table/raw_data_models.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_table.dart';
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/large_card.dart';
import 'package:apparence_kit/core/widgets/responsive_layout.dart';
import 'package:apparence_kit/core/widgets/user_avatar.dart';
import 'package:apparence_kit/modules/users/ui/components/user_stats.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colors.background,
      child: SingleChildScrollView(
        child: LargeLayoutContainer(
          maxWidth: 1200,
          child: Column(
            children: [
              const SizedBox(height: 80),
              IntrinsicHeight(
                child: Row(
                  spacing: 24,
                  children: [
                    Expanded(child: TotalUserCardComponent()),
                    Expanded(child: TotalSubscriptionCardComponent()),
                    Expanded(
                      child: LargeCard(
                        label: 'Need help?',
                        title: 'Documentation',
                        subtitle: 'ApparenceKit',
                        backgroundColor: context.colors.grey3,
                        textColor: context.colors.background,
                        onTap: () => launchUrl(Uri.parse('https://apparencekit.dev/docs/start/overview/')),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 80),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(32, 24, 32, 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: context.colors.surface,
                    border: Border.all(
                      color: context.colors.onBackground.withOpacityCpy(.1),
                    ),
                  ),
                  child: RawDataTableComponent(
                    tableName: 'users',
                    orderBy: 'creation_date',
                    orderAscending: false,
                    fields: [
                      Field.fromString(name: 'id'),
                      Field.fromString(
                        name: 'avatar_url',
                        builder: (url) {
                          final urlStr = url as String;
                          if(urlStr == 'null') {
                            return UserAvatar.fromUrl(url: '', radius: 16, iconSize: 12);
                          }
                          return UserAvatar.fromUrl(url: urlStr, radius: 16, iconSize: 12);
                        },
                      ),
                      Field.fromString(name: 'name'),
                      Field.fromString(name: 'email'),
                      Field.fromDateTime(name: 'creation_date'),
                    ],
                    actionsBuilder: (row) {
                      return [
                        IconButton(
                          onPressed: () => context.go('/users/${row[0].value}'),
                          icon: Icon(Icons.arrow_forward_ios, size: 14, color: context.colors.onSurface),
                        ),
                      ];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
