function dots --description "Manage bare dotfiles repo"
    set -l dotfiles_git "$HOME/.dotfiles.git"
    set -l dotfiles_work_tree "$HOME"

    if test (count $argv) -gt 0
        switch $argv[1]
            case cd
                cd "$dotfiles_work_tree"
                return
            case root
                printf '%s\n' "$dotfiles_work_tree"
                return
            case git-dir
                printf '%s\n' "$dotfiles_git"
                return
        end
    end

    command git -C "$dotfiles_work_tree" --git-dir="$dotfiles_git" --work-tree="$dotfiles_work_tree" $argv
end
