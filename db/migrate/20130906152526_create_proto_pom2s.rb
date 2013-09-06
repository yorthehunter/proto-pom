class CreateProtoPom2s < ActiveRecord::Migration
  def change
    create_table :proto_pom2s do |t|
      t.string :pp_vendor
      t.string :pp_end_date
      t.string :pp_start_date
      t.string :pp_arrival_date
      t.string :pp_notes
      t.string :pp_po_name
      t.string :pp_status
      t.string :pp_created_date
      t.integer :pp_wholesale
      t.integer :pp_retail

      t.timestamps
    end
  end
end
