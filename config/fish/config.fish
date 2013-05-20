function m; mvim $argv; end
function g; git $argv; end
function vim; mvim -v $argv; end
function v; mvim -v $argv; end
function :q; exit; end

set EDITOR vim
