function z
    if test (count $argv) -eq 0
        set dir (fasd -dlR $argv | fzf --height ~10)
    else
        set dir (fasd -dlR $argv | head -n 1)
    end

    test -z $dir && return
    test -d $dir && cd $dir
end
