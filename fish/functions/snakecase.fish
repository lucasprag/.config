function snakecase
  #ruby -e "require 'facets'; system \"echo #{'$argv'.snakecase} | pbcopy\""
  ruby -e "require 'facets'; puts '$argv'.snakecase"
end
