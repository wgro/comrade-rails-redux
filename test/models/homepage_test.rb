# == Schema Information
#
# Table name: homepages
#
#  id                  :integer          not null, primary key
#  html_lang           :string
#  title               :string
#  url                 :string           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  language_service_id :integer          not null
#
# Indexes
#
#  index_homepages_on_language_service_id  (language_service_id)
#
# Foreign Keys
#
#  language_service_id  (language_service_id => language_services.id)
#
require "test_helper"

class HomepageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
