class Jekyll::Converters::Markdown::DebtCollective
  def initialize(config)
    require 'redcarpet'
    @config = config
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, highlight: true, autolink: true)
  rescue LoadError
    STDERR.puts 'You are missing a library required for Markdown. Please run:'
    STDERR.puts '  $ [sudo] gem install redcarpet'
    raise FatalException.new("Missing dependency: redcarpet")
  end

  def convert(content)
    html = @markdown.render(content)

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
