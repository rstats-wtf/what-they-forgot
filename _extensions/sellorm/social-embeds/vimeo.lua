function vimeo(args)
    if quarto.doc.isFormat('html') then
        local videoid = pandoc.utils.stringify(args[1])

        -- Assemble HTML to be returned
        local html = '<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;"> <iframe src="https://player.vimeo.com/video/'
            .. videoid
            .. '" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border:0;" title="vimeo video" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> </div> '

	return pandoc.RawInline('html', html)
    else
        return pandoc.Null()
    end
end
