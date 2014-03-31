module Jekyll
  class SlideShare < Liquid::Tag

    def initialize(name, markup, tokens)
        if markup =~ /(\S+) (\d+) (\d+)/i
            @id = $1
            @width = $2
            @height = $3
        else
            @id = markup
            @width = 480
            @height = 360
        end
        super
    end

    def render(context)
      %(<div class="embed-video-container"><iframe src="http://www.slideshare.net/slideshow/embed_code/#{@id}" width="#{@width}" height="#{@height}" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC;border-width:1px 1px 0;margin-bottom:5px" allowfullscreen></iframe></div>)
    end
  end
end

Liquid::Template.register_tag('slideshare', Jekyll::SlideShare)
