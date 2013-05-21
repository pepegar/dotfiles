function m; mvim $argv; end
function g; git $argv; end
function vim; mvim -v $argv; end
function v; mvim -v $argv; end
function :q; exit; end

function ev: mvim ~/.vimrc; end
function ef: mvim ~/.config/fish/config.fish; end
