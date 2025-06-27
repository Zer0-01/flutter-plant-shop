import 'package:flutter/material.dart';

class MallAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MallAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      backgroundColor: Theme.of(context).colorScheme.surface,

      title: Material(
        elevation: 2,

        borderRadius: BorderRadius.circular(40),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.tune),
            hintText: "Search Salon",
            isDense: true,

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
