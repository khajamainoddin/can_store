json.array!(@bills) do |bill|
  json.extract! bill, :id, :name, :user_id
  json.url bill_url(bill, format: :json)
end