require 'pundit/rspec'
require 'pundit/matchers'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end

  Dox.configure do |config|
    config.header_file_path = Rails.root.join('spec/docs/v1/descriptions/header.md')
    config.desc_folder_path = Rails.root.join('spec/docs/v1/descriptions')
    config.headers_whitelist = ['Accept', 'X-Auth-Token']
  end
end
