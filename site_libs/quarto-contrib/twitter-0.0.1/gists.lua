function gist(args)
    if quarto.doc.isFormat('html') then
        local user = pandoc.utils.stringify(args[1])
        local gist_id = pandoc.utils.stringify(args[2])
        local file_fragment = ''
        if args[3] ~= nil then
            local file = pandoc.utils.stringify(args[3])
            file_fragment = '?file=' .. file
        end

        -- Assemble HTML to be returned
        local html = '<script src="https://gist.github.com/'
            .. user
            .. '/'
            .. gist_id
            .. '.js'
            .. file_fragment
            .. '"></script>'

        return pandoc.RawInline('html', html)
    else
        return pandoc.Null()
    end
end
