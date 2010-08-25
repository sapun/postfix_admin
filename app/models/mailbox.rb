class Mailbox < ActiveRecord::Base
  belongs_to :domain
  has_many :aliases

end
