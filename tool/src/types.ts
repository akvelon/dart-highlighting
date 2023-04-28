// TODO: Import types from highlight.js instead of this, https://github.com/akvelon/dart-highlighting/issues/50

export interface CallbackResponse {
  data: Record<string, any>;
  ignoreMatch: () => void;
  isMatchIgnored: boolean;
}

export type ModeCallback = (
  match: RegExpMatchArray,
  response: CallbackResponse,
) => void;

interface ModeCallbacks {
  "on:end"?: Function;
  "on:begin"?: ModeCallback;
}

interface ModeDetails {
  begin?: RegExp | string | (RegExp | string)[];
  match?: RegExp | string | (RegExp | string)[];
  end?: RegExp | string | (RegExp | string)[];
  // deprecated in favor of `scope`
  className?: string;
  scope?: string | Record<number, string>;
  beginScope?: string | Record<number, string>;
  endScope?: string | Record<number, string>;
  contains?: ("self" | Mode)[];
  endsParent?: boolean;
  endsWithParent?: boolean;
  endSameAsBegin?: boolean;
  skip?: boolean;
  excludeBegin?: boolean;
  excludeEnd?: boolean;
  returnBegin?: boolean;
  returnEnd?: boolean;
  __beforeBegin?: Function;
  parent?: Mode;
  starts?: Mode;
  lexemes?: string | RegExp;
  keywords?: Record<string, any> | string;
  beginKeywords?: string;
  relevance?: number;
  illegal?: string | RegExp | Array<string | RegExp>;
  variants?: Mode[];
  cachedVariants?: Mode[];
  // parsed
  subLanguage?: string | string[];
  isCompiled?: boolean;
  label?: string;
}

export interface Mode extends ModeCallbacks, ModeDetails {}

export type Language = LanguageDetail & Partial<Mode>;

export interface LanguageDetail {
  name?: string;
  unicodeRegex?: boolean;
  rawDefinition?: () => Language;
  aliases?: string[];
  disableAutodetect?: boolean;
  contains: Mode[];
  case_insensitive?: boolean;
  keywords?: Record<string, any> | string;
  isCompiled?: boolean;
  exports?: any;
  classNameAliases?: Record<string, string>;
  compilerExtensions?: CompilerExt[];
  supersetOf?: string;
}

export type CompilerExt = (mode: Mode, parent: Mode | Language | null) => void;
