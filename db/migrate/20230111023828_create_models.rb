class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :m1s do |t|
      t.timestamps
    end

    create_table :m2s do |t|
      t.timestamps
    end

    create_table :m1_m2s do |t|
      t.references :m1, foreign_key: true
      t.references :m2, foreign_key: true
      t.timestamps
    end

    create_table :m3s do |t|
      t.references :m1_m2, foreign_key: true
      t.timestamps
    end
  end
end
