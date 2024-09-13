import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_quote_collector_flutter/utils/custom_widgets/custom_appbar.dart';
import '../../config/constants.dart';
import '../../controllers/add_quote_controller.dart';

class AddQuoteView extends StatelessWidget {
  const AddQuoteView({super.key});

  @override
  Widget build(BuildContext context) {
    final addQuoteProvider = Provider.of<AddQuoteController>(context);

    return Scaffold(
        appBar: customAppBar(title: 'Add Quote'),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: addQuoteProvider.formKey,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Quote Text', style: kFont18Black),
                  TextFormField(
                    onSaved: (value) => addQuoteProvider.setQuoteText(value ?? ''),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the quote text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('Personal Note', style: kFont18Black),
                  TextFormField(
                    maxLines: 3,
                    onSaved: (value) => addQuoteProvider.setPersonalNote(value ?? ''),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a personal note';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('Tags (comma separated)', style: kFont18Black),
                  TextFormField(
                    onSaved: (value) {
                      addQuoteProvider.tags = value?.split(',') ?? [];
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter at least one tag';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            if (addQuoteProvider.validateForm()) {
                              addQuoteProvider.saveForm(context);
                            }
                          },
                          child: const Text('Add Quote', style: buttonStyle)))
                ]))));
  }
}
