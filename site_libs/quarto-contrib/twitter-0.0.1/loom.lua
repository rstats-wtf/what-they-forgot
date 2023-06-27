function loom(args)
    if quarto.doc.isFormat('html') then
        local videoid = pandoc.utils.stringify(args[1])

        -- Assemble HTML to be returned
        local html = '<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.loom.com/embed/'
            .. videoid
            .. '" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>'

	return pandoc.RawInline('html', html)
    else
        return pandoc.Null()
    end
end

