# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  description :text
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :votes, as: :votable, dependent: :destroy
  has_many :comentarios, as: :comentable, dependent: :destroy
end
