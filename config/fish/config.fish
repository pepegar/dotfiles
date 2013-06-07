<<<<<<< HEAD
set PATH /usr/bin /bin /usr/sbin /sbin /usr/local/bin /usr/local/share/npm/bin /usr/X11R6/bin /Users/Pepe/phpctags /usr/local/Cellar/mysql/5.5.27/bin /usr/local/php5/bin $PATH

function gvim; mvim $argv; end)
=======
function m; mvim $argv; end
function g; git $argv; end
function vim; mvim -v $argv; end
function v; mvim -v $argv; end
function :q; exit; end

function ev: mvim ~/.vimrc; end
function ef: mvim ~/.config/fish/config.fish; end

function prepend_to_path -d "Prepend the given dir to PATH if it exists and is not already in it"
    if test -d $argv[1]
        if not contains $argv[1] $PATH
            set -gx PATH "$argv[1]" $PATH
        end
    end
end
prepend_to_path "/usr/local/php5/bin"
prepend_to_path "/usr/local/mysql/bin"
prepend_to_path "/usr/local/boris/bin"
prepend_to_path "/usr/bin"
prepend_to_path "/bin"
prepend_to_path "/usr/sbin"
prepend_to_path "/sbin"
prepend_to_path "/usr/local/bin"
prepend_to_path "/usr/"
>>>>>>> 10ca33f2c45d5497ccf25dc3bf17ce0c2c4156c2
