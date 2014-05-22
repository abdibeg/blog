module ApplicationHelper
	def markdown(text)
		renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
		md = Redcarpet::Markdown.new(renderer, extensions = {})
		md.render(text).html_safe
	end
end
