# @more https://www.youtube.com/watch?v=YrrR--HjtWA
function morre # deabo
  ps aux | grep $argv | awk '{print $2}' | xargs sudo kill
end
