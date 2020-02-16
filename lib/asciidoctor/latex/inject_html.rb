

require 'asciidoctor'
require 'asciidoctor/extensions'
require 'asciidoctor/latex/core_ext/colored_string'

#
module Asciidoctor::LaTeX

  class InjectHTML < Asciidoctor::Extensions::Postprocessor

    def process document, output
      output.sub('</head>', $click_insertion)
    end

  end

  $click_insertion = <<EOF
EOF

end
