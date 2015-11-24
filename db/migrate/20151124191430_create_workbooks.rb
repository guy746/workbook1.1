class CreateWorkbooks < ActiveRecord::Migration
  def change
    create_table :workbooks do |t|
      t.text :title
      t.text :clientid
      t.text :memberid
      t.string :formid
      t.string :formver
      t.string :q001section
      t.text :q001qlong
      t.text :q001qshort
      t.text :q001qatext
      t.references :user, index: true

      t.timestamps
    end
  end
end
