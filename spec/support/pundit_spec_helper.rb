module PunditSpecHelper
  Pundit::Matchers.configure do |config|
    config.user_alias = :account
  end
end
