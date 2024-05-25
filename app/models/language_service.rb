# == Schema Information
#
# Table name: language_services
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class LanguageService < ApplicationRecord
  has_many :homepages, dependent: :destroy

  validates :name, presence: true
end
