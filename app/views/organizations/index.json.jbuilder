json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :streetAddress, :city, :country, :postalCode, :phone, :email
  json.url organization_url(organization, format: :json)
end
