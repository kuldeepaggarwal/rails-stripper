require 'rspec'
require_relative '../lib/stripper-rails'

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  # force rspec to raise exception if used old syntax.
  config.raise_errors_for_deprecations!
end