class AddProviderToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :provider, foreign_key: true
  end
end
