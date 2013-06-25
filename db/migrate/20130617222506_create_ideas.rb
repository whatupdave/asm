class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas, id: false do |t|
      t.primary_key :id, :uuid, default: nil
      t.string      :slug
      t.string      :name, null: false
      t.string      :pitch
      t.text        :description
      t.datetime    :submitted_at
      t.datetime    :approved_at
      t.integer     :presale_amount
      t.timestamps
    end
  end
end
