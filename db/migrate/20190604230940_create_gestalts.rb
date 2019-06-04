class CreateGestalts < ActiveRecord::Migration[5.2]
  def change
    create_table :gestalts do |t|
      t.string :name_of_perpetrator
      t.datetime :time_of_offence
      t.string :type_of_offence
      t.string :suggested_punishment

      t.timestamps
    end
  end
end
