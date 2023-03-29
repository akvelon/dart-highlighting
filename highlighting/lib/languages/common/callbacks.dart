import 'package:highlighting/src/domain_regexp_match.dart';
import 'package:highlighting/src/response.dart';

import '../../src/const/literals.dart';

final endSameAsBeginOnBegin = (DomainRegexMatch match, Response response) {
  response.data[$beginMatch] = match[1];
};

final endSameAsBeginOnEnd = (DomainRegexMatch match, Response response) {
  if (response.data[$beginMatch] != match[1]) {
    response.ignoreMatch();
  }
};

final shebangOnBegin = (DomainRegexMatch m, Response resp) {
  if (m.index != 0) resp.ignoreMatch();
};
