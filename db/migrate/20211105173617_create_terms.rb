class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.string :number
      t.date :date_start
      t.date :date_end
      t.text :description
      t.references :contract, null: false, foreign_key: true

      t.timestamps
    end
  end
end
