if status is-interactive
    alias c="clear"
    alias co="exec code"
    alias mic="micro"
    if type -q rbenv
        rbenv init - fish | source
    end
    set fish_greeting
end
