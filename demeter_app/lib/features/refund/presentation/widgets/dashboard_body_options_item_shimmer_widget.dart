import 'package:demeter_app/features/refund/presentation/bloc/export.dart';
import 'package:demeter_app/features/refund/presentation/dtos/refund_dto.dart';
import 'package:demeter_design_system/components/extras/widgets/shiimmer_widget.dart';
import 'package:demeter_design_system/demeter_design_system.dart';
import 'package:flutter/material.dart';

class DashboardBodyOptionItemShimmerWidget extends StatelessWidget {
  final List<RefundDto> refunds;

  static const _refundsConst = <RefundDto>[];
  const DashboardBodyOptionItemShimmerWidget(
      {Key? key, this.refunds = _refundsConst})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardRefundShimmerItemWidget();
  }
}

class _CardRefundShimmerItemWidget extends StatelessWidget {
  const _CardRefundShimmerItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450, maxHeight: 149),
      // width: getProportionateScreenWidth(180),
      // height: 130,
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: ShimmerWidget(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: ShimmerWidget(
                height: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerWidget(
                      width: getProportionateScreenWidth(60), height: 15),
                  ShimmerWidget(
                      width: getProportionateScreenWidth(60), height: 15)
                ],
              ),
            ),
            const ShimmerWidget(height: 40),
          ],
        ),
      ),
    );
  }
}
