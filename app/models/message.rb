class Message < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
   apply_simple_captcha
end
