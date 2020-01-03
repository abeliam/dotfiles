function fish_prompt --description 'Write out the prompt'
    if test $status -ne 0
        echo -n -s (set_color red --bold) "(" $status ")" (set_color normal) " "
    end

    set -l color_cwd $fish_color_cwd
    set -l suffix ">"
    if contains -- $USER root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            end
            set suffix '#'
    end
    echo -n -s (set_color green) (basename $PWD) (set_color normal) $suffix " "
end
