@screen_width = `tput cols`.to_i

namespace :cc do
  desc "Check code for bad practices"
  task rails_best_practices: :environment do
    print_separator
    sh "rails_best_practices"
  end

  desc "Check for security issues"
  task brakeman: :environment do
    print_separator
    sh "brakeman -q"
  end

  desc "Check for style guide offenses in your code"
  task rubocop: :environment do
    print_separator
    sh "rubocop --format simple || true"
  end

  desc "Analyze code smell and health"
  task rubycritic: :environment do
    print_separator
    sh "rubycritic"
  end

  desc "Execute rspec tests"
  task rspec: :environment do
    print_separator
    sh "rspec"
  end
end

def print_separator
  print "\n"
  @screen_width.times { print "==" }
  print "\n\n"
end

task cc: [
  "cc:brakeman",
  "cc:rails_best_practices",
  "cc:rubocop",
  "cc:rspec",
  "cc:rubycritic",
]
