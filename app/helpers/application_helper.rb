module ApplicationHelper
  class MarkdownRenderer < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:line_numbers => :table)
    end
  end
    
  def markdown(text)
    rndr = MarkdownRenderer.new(hard_wrap: true)
    options = {
      :fenced_code_blocks => true,
      :no_intra_emphasis => true,
      :autolink => true,
      :strikethrough => true,
      :lax_html_blocks => true,
      :superscript => true
    }
    markdown_to_html = Redcarpet::Markdown.new(rndr, options)
    markdown_to_html.render(text).html_safe
  end
  #def coderay(text)
    #text.gsub(/<code( lang='(.+?)')?>(.+?)<\/code>/m) do
       #CodeRay.scan($3, $2).div(:line_numbers=> :table)
    #end
  #end
end
