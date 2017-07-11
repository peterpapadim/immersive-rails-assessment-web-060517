# == Schema Information
#
# Table name: episodes
#
#  id         :integer          not null, primary key
#  date       :date
#  number     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances
end
