class Jekyll::Converters::Markdown::DebtCollective
  def initialize(config)
    require 'kramdown'
    @config = config
  rescue LoadError
    STDERR.puts 'You are missing a library required for Markdown. Please run:'
    STDERR.puts '  $ [sudo] gem install kramdown'
    raise FatalException.new("Missing dependency: kramdown")
  end

  def convert(content)
    html = Kramdown::Document.new(content).to_html

    # This is obviously a hack, but it's the best way to make
    # sure the organizers don't have to worry about dumb
    # markdown processor rules
    html.gsub! '&lt;&lt;', '<aside>'
    html.gsub! '&lt;(', '<aside>'
    html.gsub! '&lt;aside&gt;', '<aside>'
    html.gsub! '&lt;/aside&gt;', '</aside>'
    html.gsub! '&gt;&gt;', '</aside>'
    html.gsub! ')&gt;', '</aside>'
    html
  end
end