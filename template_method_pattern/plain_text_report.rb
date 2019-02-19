require_relative './report'

class PlainTextReport < Report
  puts 'PlainTextReport loaded!'

  def output_head
    puts("**** #{@title} ****")
    puts
  end

  def output_line(line)
    puts(line)
  end
end
