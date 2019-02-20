require 'active_support'

autoload :Report, './strategy_pattern/report'
autoload :Formatter, './strategy_pattern/formatter'

include Formatter

report = Report.new &Formatter::HTML
report.output_report

report.formatter = Formatter::PLAIN_TEXT
report.output_report

# If you try to send formatter it will raise the abstract method error
# report.formatter = Formatter.new
# report.output_report
