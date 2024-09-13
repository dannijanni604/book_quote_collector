import 'package:book_quote_collector_client/book_quote_collector_client.dart';
import 'package:book_quote_collector_flutter/repository/quote_repository.dart';
import 'package:book_quote_collector_flutter/utils/custom_widgets/app_snackbars.dart';
import 'package:flutter/material.dart';

class AddQuoteController extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String quoteText = '';
  String personalNote = '';
  List<String> tags = [];
  final QuoteRepository quoteRepository = QuoteRepository();
  int userId = 1;

  void setQuoteText(String value) {
    quoteText = value;
    notifyListeners();
  }

  void setPersonalNote(String value) {
    personalNote = value;
    notifyListeners();
  }

  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

  void saveForm(context) {
    if (validateForm()) {
      formKey.currentState?.save();
      quoteRepository
          .addQuote(userId, Quote(quoteText: quoteText, personalNote: personalNote, createdAt: DateTime.now(), tags: tags, userId: userId))
          .then((value) => Navigator.pop(context))
          .onError((error, stackTrace) => appSnackBar(context: context, message: error.toString()));
    }
  }
}
