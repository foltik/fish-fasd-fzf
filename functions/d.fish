function d
    if test (count $argv) -eq 0
        echo (fasd -dlR $argv | fzf)
    else
        echo (fasd -dlR $argv | head -n 1)
    end
end
