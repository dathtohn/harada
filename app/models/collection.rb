# == Schema Information
#
# Table name: collections
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Collection < ActiveRecord::Base
  attr_accessible :date, :title
  has_many :works
end
