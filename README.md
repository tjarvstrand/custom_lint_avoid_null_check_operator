
A [custom_lint](https://pub.dev/packages/custom_lint) rule that enforces the avoidance of null check
operators.

## Usage

Add the following to your `pubspec.yaml`:

```yaml

dev_dependencies:
  custom_lint:
  custom_lint_avoid_null_check_operator: ^0.0.1
```

Then, add this to `analysis_options.yaml`:

```yaml
analyzer:
  plugins:
    - custom_lint
```