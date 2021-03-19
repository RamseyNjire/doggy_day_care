# == Schema Information
#
# Table name: dogs
#
#  id   :bigint           not null, primary key
#  name :string           not null
#
class Dog < ApplicationRecord
    validates :name, presence: true
    validate :check_name_length

    def check_name_length
        unless self.name.length >= 4
            errors[:name] << "is shorter than 4 characters"
        end
    end
end
