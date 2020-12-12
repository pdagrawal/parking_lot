class ContactQuery < ApplicationRecord
  enum status: {
    pending: 0,
    seen: 1,
    attended: 2
  }
end
