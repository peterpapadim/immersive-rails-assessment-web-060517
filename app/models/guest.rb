# == Schema Information
#
# Table name: guests
#
#  id         :integer          not null, primary key
#  name       :string
#  occupation :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  episode_id :integer
#

class Guest < ApplicationRecord
  belongs_to :episode
  belongs_to :appearance
end
