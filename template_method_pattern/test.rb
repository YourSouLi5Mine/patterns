require 'active_support'

autoload :HTMLReport, './template_method_pattern/html_report'
autoload :PlainTextReport, './template_method_pattern/plain_text_report'

html = HTMLReport::new
html.output_report

plain = PlainTextReport::new
plain.output_report
