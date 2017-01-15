class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      #LONGTEXT-mysql
      t.text :text, :limit => 4294967295
      t.integer :status

      t.timestamps
    end
  end
end
