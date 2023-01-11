class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :m1s do |t|
    end

    create_table :m2s do |t|
    end

    create_table :m1_m2s do |t|
      t.references :m1, index: false
      t.references :m2, index: false
    end

    create_table :m3s do |t|
      t.references :m1_m2, index: false
    end
  end
end
