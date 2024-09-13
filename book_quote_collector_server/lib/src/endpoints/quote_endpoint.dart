import 'package:book_quote_collector_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class QuoteEndpoint extends Endpoint {
  Future<int?> addQuote(Session session, Quote quote) async {
    var insertedRow = await Quote.db.insertRow(session, quote);
    return insertedRow.id;
  }

  Future<bool> editQuote(Session session, Quote quote) async {
    var exitingQuote = await Quote.db.findById(session, quote.id!);
    if (exitingQuote == null || exitingQuote.userId != quote.userId) {
      return false;
    }
    await Quote.db.updateRow(session, quote);
    return true;
  }

  Future<bool> deleteQuote(Session session, int quoteId, int userId) async {
    var existingQuote = await Quote.db.findById(session, quoteId);
    if (existingQuote == null || existingQuote.userId != userId) {
      return false;
    }
    await Quote.db.deleteRow(session, existingQuote);
    return true;
  }

  Future<List<Quote>> fetchQuotes(Session session, int userId) async {
    return await Quote.db
        .find(session, where: (quote) => quote.userId.equals(userId));
  }
}
