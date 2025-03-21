import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

PluginBase createPlugin() => _AvoidNullCheckOperator();

class _AvoidNullCheckOperator extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        _AvoidNullCheckOperatorRule(),
      ];
}

class _AvoidNullCheckOperatorRule extends DartLintRule {
  const _AvoidNullCheckOperatorRule() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_null_check_operator',
    problemMessage: 'Avoid using the null check operator (!).',
  );

  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addExpression((expr) {
      if (expr.endToken.type == TokenType.BANG) {
        reporter.atNode(expr, code);
      }
    });
  }
}
