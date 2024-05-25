# == Schema Information
#
# Table name: languages
#
#  id         :integer          not null, primary key
#  iso2       :string
#  iso3       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Language < ApplicationRecord
end
