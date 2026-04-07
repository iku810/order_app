import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../table_list/presentation/table_list_route.dart';
import '../../domain/payment_summary.dart';
import '../../providers/payment_summary_provider.dart';
import '../checkout_notifier.dart';

class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({
    required this.storeId,
    required this.tableUseId,
    super.key,
  });

  final String storeId;
  final String tableUseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      checkoutProvider(tableUseId),
      (previous, next) {
        if (next is AsyncData && previous is AsyncLoading) {
          if (!context.mounted) return;
          TableListRoute(storeId: storeId).go(context);
          return;
        }
        if (next is AsyncError) {
          if (!context.mounted) return;
          showDialog<void>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('会計エラー'),
              content: Text('会計に失敗しました: ${next.error}'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('閉じる'),
                ),
              ],
            ),
          );
        }
      },
    );

    final summaryAsync = ref.watch(paymentSummaryProvider(tableUseId));
    final isProcessing = ref.watch(checkoutProvider(tableUseId)) is AsyncLoading;

    return Scaffold(
      appBar: AppBar(title: const Text('会計')),
      body: summaryAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラーが発生しました: $e')),
        data: (summary) => _PaymentBody(
          summary: summary,
          isProcessing: isProcessing,
          onCheckout: () =>
              ref.read(checkoutProvider(tableUseId).notifier).checkout(),
        ),
      ),
    );
  }
}

class _PaymentBody extends StatelessWidget {
  const _PaymentBody({
    required this.summary,
    required this.isProcessing,
    required this.onCheckout,
  });

  final PaymentSummary summary;
  final bool isProcessing;
  final VoidCallback onCheckout;

  @override
  Widget build(BuildContext context) {
    final items = summary.items;

    int menuSubtotal = 0;
    int excludedTax10Base = 0;
    int excludedTax8Base = 0;
    int includedTax10Base = 0;
    int includedTax8Base = 0;

    for (final item in items) {
      menuSubtotal += item.lineTotal;
      if (item.tax == PaymentTax.exclude) {
        if (item.taxType == PaymentTaxType.normal) {
          excludedTax10Base += item.lineTotal;
        } else if (item.taxType == PaymentTaxType.reduced) {
          excludedTax8Base += item.lineTotal;
        }
      } else if (item.tax == PaymentTax.include) {
        if (item.taxType == PaymentTaxType.normal) {
          includedTax10Base += item.lineTotal;
        } else if (item.taxType == PaymentTaxType.reduced) {
          includedTax8Base += item.lineTotal;
        }
      }
    }

    final tableCharge = summary.tableChargePerPerson * summary.number;
    final serviceChargeBase = menuSubtotal + tableCharge;
    final serviceCharge =
        (serviceChargeBase * summary.serviceChargeRate / 100).round();

    final excludedTax10 = (excludedTax10Base * 0.1).round();
    final excludedTax8 = (excludedTax8Base * 0.08).round();
    final includedTax10 = (includedTax10Base * 10 / 110).round();
    final includedTax8 = (includedTax8Base * 8 / 108).round();

    final total =
        menuSubtotal + tableCharge + serviceCharge + excludedTax10 + excludedTax8;

    return Column(
      children: [
        Expanded(
          child: items.isEmpty
              ? const Center(child: Text('注文がありません'))
              : ListView(
                  children: [
                    const _SectionHeader(label: '注文内容'),
                    ...items.map(
                      (item) => ListTile(
                        dense: true,
                        title: Text(item.name),
                        subtitle: Text(
                          '¥${item.unitPrice} × ${item.quantity}点'
                          '  ${_taxLabel(item)}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        trailing: Text('¥${item.lineTotal}'),
                      ),
                    ),
                  ],
                ),
        ),
        const Divider(height: 1),
        SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Column(
            children: [
              _SummaryRow(label: '商品小計', amount: menuSubtotal),
              if (tableCharge > 0)
                _SummaryRow(
                  label: 'テーブルチャージ (${summary.number}名 × ¥${summary.tableChargePerPerson})',
                  amount: tableCharge,
                ),
              if (serviceCharge > 0)
                _SummaryRow(
                  label: 'サービスチャージ (${summary.serviceChargeRate}%)',
                  amount: serviceCharge,
                ),
              if (excludedTax10 > 0)
                _SummaryRow(label: '消費税 10% (外税)', amount: excludedTax10),
              if (excludedTax8 > 0)
                _SummaryRow(label: '消費税 8% (外税)', amount: excludedTax8),
              if (includedTax10 > 0)
                _SummaryRow(
                  label: '内消費税 10% (参考)',
                  amount: includedTax10,
                  isReference: true,
                ),
              if (includedTax8 > 0)
                _SummaryRow(
                  label: '内消費税 8% (参考)',
                  amount: includedTax8,
                  isReference: true,
                ),
              const Divider(),
              _SummaryRow(label: '合計', amount: total, isTotal: true),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isProcessing ? null : onCheckout,
                  child: isProcessing
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('会計を完了'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _taxLabel(PaymentItem item) {
    if (item.tax == PaymentTax.none || item.taxType == PaymentTaxType.none) {
      return '(非課税)';
    }
    final rate = '${item.taxRate}%';
    return item.tax == PaymentTax.include ? '(内税$rate)' : '(外税$rate)';
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.amount,
    this.isTotal = false,
    this.isReference = false,
  });

  final String label;
  final int amount;
  final bool isTotal;
  final bool isReference;

  @override
  Widget build(BuildContext context) {
    final textStyle = isTotal
        ? Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold)
        : isReference
            ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                )
            : Theme.of(context).textTheme.bodyLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: textStyle),
          Text('¥$amount', style: textStyle),
        ],
      ),
    );
  }
}
