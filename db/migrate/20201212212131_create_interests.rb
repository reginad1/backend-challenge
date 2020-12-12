class CreateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :interests do |t|
      t.timestamps

      t.references :user
      t.string :website_heading
    end
  end
end
