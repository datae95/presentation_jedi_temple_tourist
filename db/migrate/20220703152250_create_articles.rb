class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.references :service, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.string :meeting_point
      t.datetime :start_at

      t.timestamps
    end
  end
end
