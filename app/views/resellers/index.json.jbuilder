json.array!(@resellers) do |reseller|
  json.extract! reseller, :id, :title_fa, :title_en, :Management_name_fa, :Management_name_en, :phone, :address_fa, :address_en
  json.url reseller_url(reseller, format: :json)
end
