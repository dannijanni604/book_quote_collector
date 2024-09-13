import 'package:flutter/material.dart';
import 'package:book_quote_collector_client/book_quote_collector_client.dart';
import '../repository/quote_repository.dart';

class QuotesController extends ChangeNotifier {
  List<Quote> quotes = [];
  bool _isLoading = false;
  final QuoteRepository quoteRepository = QuoteRepository();
  int userId = 1;

  bool get isLoading => _isLoading;

  Future<void> fetchQuotes() async {
    _isLoading = true;
    notifyListeners();
    quotes = await quoteRepository.fetchQuotes(userId);

    _isLoading = false;
    notifyListeners();
  }
}
