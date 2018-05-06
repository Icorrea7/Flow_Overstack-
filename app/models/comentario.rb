# == Schema Information
#
# Table name: comentarios
#
#  id              :integer          not null, primary key
#  descripcion     :text
#  user_id         :integer
#  comentable_type :string
#  comentable_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Comentario < ApplicationRecord
  belongs_to :user
  belongs_to :comentable, polymorphic: true
end
