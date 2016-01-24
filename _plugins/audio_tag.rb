module Jekyll
    class AudioTag < Liquid::Tag
        def initialize(tag_name, file, tokens)
            super
            @file = file
        end
        
        def render(context)
            html = '<audio controls="controls">'
            html += "<source src='#{@file}'/>"
            html += '<audio/>'
        end
    end
end

Liquid::Template.register_tag('audio', Jekyll::AudioTag)