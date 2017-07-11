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
  belongs_to :episode
  belongs_to :guest
end
