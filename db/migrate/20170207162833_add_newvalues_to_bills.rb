class AddNewvaluesToBills < ActiveRecord::Migration
  def change
    add_column :bills, :Select_The_Section, :string
    add_column :bills, :Dak_Id_No, :integer
    add_column :bills, :Select_The_Div_Range_From, :integer
    add_column :bills, :Select_The_Div_Range_To, :integer
    add_column :bills, :Opening_Date_Of_The_Record, :date
    add_column :bills, :Closing_Date_Of_The_Record, :date
    add_column :bills, :Select_Compactor_No, :integer
    add_column :bills, :Select_The_Shelf_No, :integer
  end
end
