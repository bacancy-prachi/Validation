class Info < ApplicationRecord
    validates :fname, presence: true,format: { with: /\A[A-Z]+\Z/,
        message: "only allows letters" }
        validates :lname, presence: true,format: { with: /\A[A-Z]+\Z/}
            validates :email, uniqueness: true,presence: true,format: { with: /\b[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}\b/,
                message: "invalid email" }
            validates :age,presence: true,inclusion: { in: 15..40 }
            validates :degree, presence: true
            validates :passing_year, presence: true
            validates :company, presence: true
            validates :website, presence: true
            validates :add1, presence: true
            validates :add2, presence: true
            validates :city, presence: true
            validates :state, presence: true
            validates :pincode, presence: true
            validates :password, confirmation: true, unless: -> { password.blank? }, length: { minimum: 10 }
            validates :user_name, uniqueness: true,exclusion: { in:  }
end
