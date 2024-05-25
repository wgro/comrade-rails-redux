class PangeaFeed < ApplicationRecord
 belongs_to :language
  belongs_to :language_service
 validates :url, presence: true
  validates :type, presence: true, inclusion: { in: %w[JSON] }
end