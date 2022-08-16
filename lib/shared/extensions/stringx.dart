import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:xml/xml.dart' as xml;

/// Utilitiy extensions for [String].
extension StringX on String {
  /// Convert [String] to [XmlDocument]
  xml.XmlDocument? get asXmlDocument {
    try {
      return xml.XmlDocument.parse(this);
    } on xml.XmlParserException catch (e) {
      if (kDebugMode) {
        print('XmlParserException: ${e.message}');
      }
      return null;
    }
  }

  /// [String] value of [XmlDocument]
  ///
  /// Return the concatenated text of this node and all its descendants,
  /// for [XmlData] nodes return the textual value of the node.
  String get xmlToText => asXmlDocument?.text ?? '';

  /// Parses the xml string and returns the resulting Json object.
  dynamic get xmlToJson => jsonDecode(xmlToText);
}
