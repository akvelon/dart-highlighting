// ignore_for_file: directives_ordering

import '../src/language.dart';
import '1c.dart';
import 'abnf.dart';
import 'accesslog.dart';
import 'actionscript.dart';
import 'ada.dart';
import 'angelscript.dart';
import 'apache.dart';
import 'applescript.dart';
import 'arcade.dart';
import 'arduino.dart';
import 'armasm.dart';
import 'asciidoc.dart';
import 'aspectj.dart';
import 'autohotkey.dart';
import 'autoit.dart';
import 'avrasm.dart';
import 'awk.dart';
import 'axapta.dart';
import 'bash.dart';
import 'basic.dart';
import 'bnf.dart';
import 'brainfuck.dart';
import 'c.dart';
import 'cal.dart';
import 'capnproto.dart';
import 'ceylon.dart';
import 'clean.dart';
import 'clojure-repl.dart';
import 'clojure.dart';
import 'cmake.dart';
import 'coffeescript.dart';
import 'coq.dart';
import 'cos.dart';
import 'cpp.dart';
import 'crmsh.dart';
import 'crystal.dart';
import 'csharp.dart';
import 'csp.dart';
import 'css.dart';
import 'd.dart';
import 'dart.dart';
import 'delphi.dart';
import 'diff.dart';
import 'django.dart';
import 'dns.dart';
import 'dockerfile.dart';
import 'dos.dart';
import 'dsconfig.dart';
import 'dts.dart';
import 'dust.dart';
import 'ebnf.dart';
import 'elixir.dart';
import 'elm.dart';
import 'erb.dart';
import 'erlang-repl.dart';
import 'erlang.dart';
import 'excel.dart';
import 'fix.dart';
import 'flix.dart';
import 'fortran.dart';
import 'fsharp.dart';
import 'gams.dart';
import 'gauss.dart';
import 'gcode.dart';
import 'gherkin.dart';
import 'glsl.dart';
import 'gml.dart';
import 'go.dart';
import 'golo.dart';
import 'gradle.dart';
import 'graphql.dart';
import 'groovy.dart';
import 'haml.dart';
import 'handlebars.dart';
import 'haskell.dart';
import 'haxe.dart';
import 'hsp.dart';
import 'http.dart';
import 'hy.dart';
import 'inform7.dart';
import 'ini.dart';
import 'irpf90.dart';
import 'isbl.dart';
import 'java.dart';
import 'javascript.dart';
import 'jboss-cli.dart';
import 'json.dart';
import 'julia-repl.dart';
import 'julia.dart';
import 'kotlin.dart';
import 'lasso.dart';
import 'latex.dart';
import 'ldif.dart';
import 'leaf.dart';
import 'less.dart';
import 'lisp.dart';
import 'livecodeserver.dart';
import 'livescript.dart';
import 'llvm.dart';
import 'lsl.dart';
import 'lua.dart';
import 'makefile.dart';
import 'markdown.dart';
import 'mathematica.dart';
import 'matlab.dart';
import 'maxima.dart';
import 'mel.dart';
import 'mercury.dart';
import 'mipsasm.dart';
import 'mizar.dart';
import 'mojolicious.dart';
import 'monkey.dart';
import 'moonscript.dart';
import 'n1ql.dart';
import 'nestedtext.dart';
import 'nginx.dart';
import 'nim.dart';
import 'nix.dart';
import 'node-repl.dart';
import 'nsis.dart';
import 'objectivec.dart';
import 'ocaml.dart';
import 'openscad.dart';
import 'oxygene.dart';
import 'parser3.dart';
import 'perl.dart';
import 'pf.dart';
import 'pgsql.dart';
import 'php-template.dart';
import 'php.dart';
import 'plaintext.dart';
import 'pony.dart';
import 'powershell.dart';
import 'processing.dart';
import 'profile.dart';
import 'prolog.dart';
import 'properties.dart';
import 'protobuf.dart';
import 'puppet.dart';
import 'purebasic.dart';
import 'python-repl.dart';
import 'python.dart';
import 'q.dart';
import 'qml.dart';
import 'r.dart';
import 'reasonml.dart';
import 'rib.dart';
import 'roboconf.dart';
import 'routeros.dart';
import 'rsl.dart';
import 'ruby.dart';
import 'ruleslanguage.dart';
import 'rust.dart';
import 'sas.dart';
import 'scala.dart';
import 'scheme.dart';
import 'scilab.dart';
import 'scss.dart';
import 'shell.dart';
import 'smali.dart';
import 'smalltalk.dart';
import 'sml.dart';
import 'sqf.dart';
import 'sql.dart';
import 'stan.dart';
import 'stata.dart';
import 'step21.dart';
import 'stylus.dart';
import 'subunit.dart';
import 'swift.dart';
import 'taggerscript.dart';
import 'tap.dart';
import 'tcl.dart';
import 'thrift.dart';
import 'tp.dart';
import 'twig.dart';
import 'typescript.dart';
import 'vala.dart';
import 'vbnet.dart';
import 'vbscript-html.dart';
import 'vbscript.dart';
import 'verilog.dart';
import 'vhdl.dart';
import 'vim.dart';
import 'wasm.dart';
import 'wren.dart';
import 'x86asm.dart';
import 'xl.dart';
import 'xml.dart';
import 'xquery.dart';
import 'yaml.dart';
import 'zephir.dart';
import '4d.dart';
import 'cshtml-razor.dart';
import 'curl.dart';
import 'cypher.dart';
import 'dylan.dart';
import 'gdscript.dart';
import 'gn.dart';
import 'hakaru.dart';
import 'minecraft-lang.dart';
import 'mde-atl.dart';
import 'mde-ocl.dart';
import 'mde-xcore.dart';
import 'oz.dart';
import 'robot.dart';
import 'robot-txt.dart';
import 'rpm-specfile.dart';
import 'abap.dart';
import 'shexc.dart';
import 'solidity.dart';
import 'yul.dart';
import 'iecst.dart';
import 'terraform.dart';
import 'vue.dart';
import 'zenscript.dart';

final communityLanguages = <String, Language>{
  '4d': lang4D,
  'cshtml-razor': cshtmlRazor,
  'curl': curl,
  'cypher': cypher,
  'dylan': dylan,
  'gdscript': gdscript,
  'gn': gn,
  'hakaru': hakaru,
  'minecraft-lang': minecraftLang,
  'mde-atl': mdeAtl,
  'mde-ocl': mdeOcl,
  'mde-xcore': mdeXcore,
  'oz': oz,
  'robot': robot,
  'robot-txt': robotTxt,
  'rpm-specfile': rpmSpecfile,
  'abap': abap,
  'shexc': shexc,
  'solidity': solidity,
  'yul': yul,
  'iecst': iecst,
  'terraform': terraform,
  'vue': vue,
  'zenscript': zenscript,
};
final builtinLanguages = <String, Language>{
  '1c': lang1C,
  'abnf': abnf,
  'accesslog': accesslog,
  'actionscript': actionscript,
  'ada': ada,
  'angelscript': angelscript,
  'apache': apache,
  'applescript': applescript,
  'arcade': arcade,
  'arduino': arduino,
  'armasm': armasm,
  'asciidoc': asciidoc,
  'aspectj': aspectj,
  'autohotkey': autohotkey,
  'autoit': autoit,
  'avrasm': avrasm,
  'awk': awk,
  'axapta': axapta,
  'bash': bash,
  'basic': basic,
  'bnf': bnf,
  'brainfuck': brainfuck,
  'c': c,
  'cal': cal,
  'capnproto': capnproto,
  'ceylon': ceylon,
  'clean': clean,
  'clojure-repl': clojureRepl,
  'clojure': clojure,
  'cmake': cmake,
  'coffeescript': coffeescript,
  'coq': coq,
  'cos': cos,
  'cpp': cpp,
  'crmsh': crmsh,
  'crystal': crystal,
  'csharp': csharp,
  'csp': csp,
  'css': css,
  'd': d,
  'dart': dart,
  'delphi': delphi,
  'diff': diff,
  'django': django,
  'dns': dns,
  'dockerfile': dockerfile,
  'dos': dos,
  'dsconfig': dsconfig,
  'dts': dts,
  'dust': dust,
  'ebnf': ebnf,
  'elixir': elixir,
  'elm': elm,
  'erb': erb,
  'erlang-repl': erlangRepl,
  'erlang': erlang,
  'excel': excel,
  'fix': fix,
  'flix': flix,
  'fortran': fortran,
  'fsharp': fsharp,
  'gams': gams,
  'gauss': gauss,
  'gcode': gcode,
  'gherkin': gherkin,
  'glsl': glsl,
  'gml': gml,
  'go': go,
  'golo': golo,
  'gradle': gradle,
  'graphql': graphql,
  'groovy': groovy,
  'haml': haml,
  'handlebars': handlebars,
  'haskell': haskell,
  'haxe': haxe,
  'hsp': hsp,
  'http': http,
  'hy': hy,
  'inform7': inform7,
  'ini': ini,
  'irpf90': irpf90,
  'isbl': isbl,
  'java': java,
  'javascript': javascript,
  'jboss-cli': jbossCli,
  'json': json,
  'julia-repl': juliaRepl,
  'julia': julia,
  'kotlin': kotlin,
  'lasso': lasso,
  'latex': latex,
  'ldif': ldif,
  'leaf': leaf,
  'less': less,
  'lisp': lisp,
  'livecodeserver': livecodeserver,
  'livescript': livescript,
  'llvm': llvm,
  'lsl': lsl,
  'lua': lua,
  'makefile': makefile,
  'markdown': markdown,
  'mathematica': mathematica,
  'matlab': matlab,
  'maxima': maxima,
  'mel': mel,
  'mercury': mercury,
  'mipsasm': mipsasm,
  'mizar': mizar,
  'mojolicious': mojolicious,
  'monkey': monkey,
  'moonscript': moonscript,
  'n1ql': n1Ql,
  'nestedtext': nestedtext,
  'nginx': nginx,
  'nim': nim,
  'nix': nix,
  'node-repl': nodeRepl,
  'nsis': nsis,
  'objectivec': objectivec,
  'ocaml': ocaml,
  'openscad': openscad,
  'oxygene': oxygene,
  'parser3': parser3,
  'perl': perl,
  'pf': pf,
  'pgsql': pgsql,
  'php-template': phpTemplate,
  'php': php,
  'plaintext': plaintext,
  'pony': pony,
  'powershell': powershell,
  'processing': processing,
  'profile': profile,
  'prolog': prolog,
  'properties': properties,
  'protobuf': protobuf,
  'puppet': puppet,
  'purebasic': purebasic,
  'python-repl': pythonRepl,
  'python': python,
  'q': q,
  'qml': qml,
  'r': r,
  'reasonml': reasonml,
  'rib': rib,
  'roboconf': roboconf,
  'routeros': routeros,
  'rsl': rsl,
  'ruby': ruby,
  'ruleslanguage': ruleslanguage,
  'rust': rust,
  'sas': sas,
  'scala': scala,
  'scheme': scheme,
  'scilab': scilab,
  'scss': scss,
  'shell': shell,
  'smali': smali,
  'smalltalk': smalltalk,
  'sml': sml,
  'sqf': sqf,
  'sql': sql,
  'stan': stan,
  'stata': stata,
  'step21': step21,
  'stylus': stylus,
  'subunit': subunit,
  'swift': swift,
  'taggerscript': taggerscript,
  'tap': tap,
  'tcl': tcl,
  'thrift': thrift,
  'tp': tp,
  'twig': twig,
  'typescript': typescript,
  'vala': vala,
  'vbnet': vbnet,
  'vbscript-html': vbscriptHtml,
  'vbscript': vbscript,
  'verilog': verilog,
  'vhdl': vhdl,
  'vim': vim,
  'wasm': wasm,
  'wren': wren,
  'x86asm': x86Asm,
  'xl': xl,
  'xml': xml,
  'xquery': xquery,
  'yaml': yaml,
  'zephir': zephir,
};
final allLanguages = {...builtinLanguages, ...communityLanguages};
