function rails-new-api
  rails new $argv -d postgresql --skip-action-cable --skip-sprockets --skip-spring --skip-test --api
end
