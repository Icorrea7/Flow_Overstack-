# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy
  has_many :comentarios, as: :comentable, dependent: :destroy

  def self.search(term)
    if term
      where('title LIKE ? OR description LIKE ?', "%#{term}%","%#{term}%")
    else
      order('id DESC')
    end
  end
end
