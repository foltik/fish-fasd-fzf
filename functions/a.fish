function a
    if test (count $argv) -eq 0
        echo (fasd -alR $argv | fzf --height ~10)
    else
        echo (fasd -alR $argv | head -n 1)
    end
end
