# == Schema Information
#
# Table name: votes
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  votable_type :string
#  votable_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :votable, polymorphic: true

  validates_uniqueness_of :user_id, scope: [:votable_type, :votable_id ], message: "Ya tiene un voto registrado"

end
