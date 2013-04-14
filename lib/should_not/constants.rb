module ShouldNot
  STARTS_WITH_SHOULD = /\Ashould(?:n't)?\s/i.freeze
  FAILURE_MESSAGE = "You should_not start an example with should!".freeze

  MINITEST_DESCRIPTION_PREFIX = /\Atest_\d+_/.freeze
end
