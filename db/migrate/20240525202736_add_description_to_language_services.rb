class AddDescriptionToLanguageServices < ActiveRecord::Migration[7.1]
  def change
    add_column :language_services, :description, :string
  end
end
