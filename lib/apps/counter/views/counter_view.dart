// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/counter/components/counter_text.dart';
import 'package:flutter_riverpod_test/apps/counter/components/fab_section.dart';
import 'package:flutter_riverpod_test/apps/counter/components/text_field.dart';
import 'package:flutter_riverpod_test/apps/counter/hooks/use_counter.dart';
import 'package:flutter_riverpod_test/apps/counter/hooks/use_title.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/views/random_user_avatar_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterView extends HookConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterResult = useCounter();

    return Scaffold(
      appBar: _appbar(ref),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MyTextField(),
          CouterText(count: counterResult.count),
          _nextPageButton(context),
        ],
      ),
      floatingActionButton: CounterViewFabSection(
        onIncreaseClick: counterResult.handleIncrease,
        onDecreaseClick: counterResult.handleDecrease,
      ),
    );
  }

  AppBar _appbar(WidgetRef ref) {
    final titleResult = useGlobalTitle(ref);

    return AppBar(
      title: Text(titleResult.title),
    );
  }

  Widget _nextPageButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: ElevatedButton(
        onPressed: () => _handleNextClick(context),
        child: const Text(
          "Go to Next TestPage",
        ),
      ),
    );
  }

  _handleNextClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RandomUserAvatarView(),
      ),
    );
  }
}
