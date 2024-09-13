import 'package:book_quote_collector_client/book_quote_collector_client.dart';
import '../main.dart';

class QuoteRepository {
  Future<List<Quote>> fetchQuotes(int userId) async {
    try {
     List<Quote> fetchedQuotes= await client.quote.fetchQuotes(userId);
      return fetchedQuotes;
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }
  }

  Future<int?> addQuote(int userId,Quote quote) async {
    try {
     var quoteId= await client.quote.addQuote(quote);
      if(quoteId!=null){
        return quoteId;
      }else{
        print("Something went wrong");
        return null;
      }
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }

  }
}