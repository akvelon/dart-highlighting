export const NOTICE_COMMENT = "// GENERATED CODE - DO NOT MODIFY BY HAND\n\n";

const ignore_for_file = [
  "lines_longer_than_80_chars",
  "prefer_single_quotes",
  "unnecessary_raw_strings",
  "use_raw_strings",
];

export const IGNORE_FOR_FILE_COMMENT =
  ignore_for_file.map((s) => `// ignore_for_file: ${s}\n`).join("") + "\n";
