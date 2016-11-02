if Rails.env.development?
  puts "  Loading initializers/git_info.rb".green
  GIT_COMMIT = `git log --pretty=oneline -n1`
  GIT_COMMIT_TIMESTAMP = `git log --pretty=format:'%ai' -n 1`
end  # if