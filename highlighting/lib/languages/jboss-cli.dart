// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final jbossCli = Language(
  id: "jboss-cli",
  refs: {},
  name: "JBoss CLI",
  aliases: ["wildfly-cli"],
  keywords: {
    "\$pattern": "[a-z-]+",
    "keyword":
        "alias batch cd clear command connect connection-factory connection-info data-source deploy deployment-info deployment-overlay echo echo-dmr help history if jdbc-driver-info jms-queue|20 jms-topic|20 ls patch pwd quit read-attribute read-operation reload rollout-plan run-batch set shutdown try unalias undeploy unset version xa-data-source",
    "literal": "true false"
  },
  contains: [
    HASH_COMMENT_MODE,
    QUOTE_STRING_MODE,
    Mode(
      className: "params",
      begin: "--[\\w\\-=\\/]+",
    ),
    Mode(
      className: "function",
      begin: ":[\\w\\-.]+",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\\B([\\/.])[\\w\\-.\\/=]+",
    ),
    Mode(
      className: "params",
      begin: "\\(",
      end: "\\)",
      contains: [
        Mode(
          begin: "[\\w-]+ *=",
          returnBegin: true,
          relevance: 0,
          contains: [
            Mode(
              className: "attr",
              begin: "[\\w-]+",
            ),
          ],
        ),
      ],
      relevance: 0,
    ),
  ],
);
