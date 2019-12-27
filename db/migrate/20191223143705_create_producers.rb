class CreateProducers < ActiveRecord::Migration[6.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :state
      
      t.timestamps
    end
  end
end
