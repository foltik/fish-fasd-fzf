function f
    if test (count $argv) -eq 0
        echo (fasd -flR $argv | fzf)
    else
        echo (fasd -flR $argv | head -n 1)
    end
end
