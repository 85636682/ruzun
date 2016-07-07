class AddConstitutionHtmlToGame < ActiveRecord::Migration
  def change
    add_column :games, :constitution_html, :text
  end
end
