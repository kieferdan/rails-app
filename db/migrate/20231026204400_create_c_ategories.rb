class CreateCAtegories < ActiveRecord::Migration[7.1]
  def change
    create_table :c_ategories do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
