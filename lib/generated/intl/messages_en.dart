// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(total) => "Total characters: ${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alive": MessageLookupByLibrary.simpleMessage("Alive"),
        "authorization": MessageLookupByLibrary.simpleMessage("Authorization"),
        "charactersTotal": m0,
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "counterValue": MessageLookupByLibrary.simpleMessage("Counter value"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create"),
        "dead": MessageLookupByLibrary.simpleMessage("Dead"),
        "dontHaveAnAccountHint":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account yet"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "findCharacter": MessageLookupByLibrary.simpleMessage("Find character"),
        "homeScreenTitle":
            MessageLookupByLibrary.simpleMessage("Third task Simple Code"),
        "inputErrorEmptyLogin":
            MessageLookupByLibrary.simpleMessage("Login cannot be empty"),
        "inputErrorEmptyPassword":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty"),
        "inputErrorLoginIsShort": MessageLookupByLibrary.simpleMessage(
            "Login must contain at least 3 characters"),
        "inputErrorPasswordIsShort": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least 8 characters"),
        "inputLoginAndPassword":
            MessageLookupByLibrary.simpleMessage("Enter login and password"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "persons": MessageLookupByLibrary.simpleMessage("Persons"),
        "russian": MessageLookupByLibrary.simpleMessage("Russian"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try again"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "wrongLoginOrPassword":
            MessageLookupByLibrary.simpleMessage("Wrong login or password")
      };
}
