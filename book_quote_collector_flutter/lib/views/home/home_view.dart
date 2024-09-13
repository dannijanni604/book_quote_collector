import 'package:book_quote_collector_flutter/config/app_routes.dart';
import 'package:book_quote_collector_flutter/controllers/quotes_controller.dart';
import 'package:book_quote_collector_flutter/utils/custom_widgets/custom_appbar.dart';
import 'package:book_quote_collector_flutter/utils/custom_widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<QuotesController>(context, listen: false).fetchQuotes();
    });

    return Scaffold(
        appBar: customAppBar(
          title: 'Quotes',
          icon: Icons.add,
          onTap: () => Navigator.pushNamed(context, AppRoutes.addQuote),
        ),
        body: Consumer<QuotesController>(builder: (context, quoteProvider, child) {
          if (quoteProvider.isLoading) {
            return Center(child: loadingIndicator());
          }

          if (quoteProvider.quotes.isEmpty) {
            return const Center(child: Text('No quotes available.'));
          }

          return ListView.builder(
              itemCount: quoteProvider.quotes.length,
              itemBuilder: (context, index) {
                final quote = quoteProvider.quotes[index];
                return Card(child: ListTile(title: Text(quote.quoteText), subtitle: Text('Note: ${quote.personalNote}')));
              });
        }));
  }
}
