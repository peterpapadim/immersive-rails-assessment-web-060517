# == Schema Information
#
# Table name: appearances
#
#  id         :integer          not null, primary key
#  episode_id :integer
#  guest_id   :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Appearance < ApplicationRecord
  has_one :episode
  has_one :guest
end
