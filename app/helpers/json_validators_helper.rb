require 'json'

module JsonValidatorsHelper
  def syntax_highlight(json)
    # Convert the JSON object to a pretty-printed string if it is not already a string
    json = JSON.pretty_generate(json) unless json.is_a?(String)

    # Escape HTML special characters
    json = json.gsub(/&/, '&amp;')
               .gsub(/</, '&lt;')
               .gsub(/>/, '&gt;')

    # Define a regex pattern for matching different JSON components
    regex = /("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/

    # Perform the replacements with span elements for syntax highlighting
    json.gsub(regex) do |match|
      cls = 'number'
      if match.start_with?('"')
        cls = match.end_with?('":') ? 'key' : 'string'
      elsif %w[true false].include?(match)
        cls = 'boolean'
      elsif match == 'null'
        cls = 'null'
      end
      "<span class=\"#{cls}\">#{match}</span>"
    end
  end

end
