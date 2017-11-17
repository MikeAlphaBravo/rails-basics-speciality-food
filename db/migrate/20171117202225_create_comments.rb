class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :author, :string
      t.column :content, :string
      t.column :rating, :integer

      t.timestamps
    end
  end
end
