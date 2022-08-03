class CreateEmploymentHisotries < ActiveRecord::Migration[7.0]
  def change
    create_table :employment_histories do |t|
      t.belongs_to :employment, null: false, foreign_key: true
      t.string :employer
      t.datetime :date_started
      t.datetime :date_employment_ended

      t.timestamps
    end
  end
end
