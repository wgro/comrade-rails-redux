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
  accepts_nested_attributes_for :homepages, allow_destroy: true

  validates :name, presence: true
end
