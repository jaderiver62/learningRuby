def mask_article(str, arr)
    arr.each do |element|
        striked = strike(element)if str.include?(element)
        str.gsub!(element, striked)
        end
    str
end

def strike(str)
    "<strike>#{str}</strike>"
end
