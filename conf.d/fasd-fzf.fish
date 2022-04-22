function _fasd_sanitize
    set input (fasd --sanitize "$argv")
    set input (string replace '~' $HOME "$input")
    echo $input
end

function _fasd -e fish_postexec
    if test $status -eq 0
        fasd --proc (string split ' ' (_fasd_sanitize "$argv"))
    end
end
