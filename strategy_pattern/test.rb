require 'active_support'

autoload :Report, './strategy_pattern/report'
autoload :HTMLFormatter, './strategy_pattern/html_formatter'
autoload :PlainTextFormatter, './strategy_pattern/plain_text_formatter'
autoload :Formatter, './strategy_pattern/formatter'

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report

# If you try to send formatter it will raise the abstract method error
report.formatter = Formatter.new
report.output_report
