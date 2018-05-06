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

require 'test_helper'

class ComentarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
