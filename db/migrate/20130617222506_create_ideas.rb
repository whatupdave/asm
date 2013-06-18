class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas, id: false do |t|
      t.primary_key :id, :uuid, default: nil
      t.string      :name, null: false
      t.string      :pitch
      t.text        :description
      t.timestamps
    end
  end
end
