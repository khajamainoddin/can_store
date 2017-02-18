json.partial! "bills/bill", bill: @bill

json.extract! @bill, :id, :name, :user_id, :created_at, :updated_at
