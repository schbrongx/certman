if Rails.env.development?
  puts "  Loading initializers/git_info.rb".green
  GIT_COMMIT = `git log --stat -n1`
end  # if