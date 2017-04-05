class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name, index: true
      t.references :owner, index: true

      t.timestamps
    end
  end
end
