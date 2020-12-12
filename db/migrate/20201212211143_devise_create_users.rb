# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email
      t.string :encrypted_password, null: false, default: ""
      t.string :first_name,         null: false, default: ""
      t.string :last_name,          null: false, default: ""
      t.string :website,            null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      t.timestamps null: false
    end

    add_index :users, :website,              unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
