$:.unshift File.join(File.dirname(__FILE__), *%w[.. lib])

require 'rubygems'
require 'redcloth'

# puts RedCloth.new(%Q~<script type="text/javascript">\nalert("Hai. I`m in ya PC. Makin ya XSS viruzz! KThxBye");\n</script>~).to_html
puts RedCloth.new("The bad tags should be <b>missing</b>: <script type=\"text/javascript\">alert(\"Hai. I`m in ya PC. Makin ya XSS viruzz! KThxBye\");</script>", [:sanitize_html]).to_html

