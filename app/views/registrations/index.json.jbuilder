json.array!(@registrations) do |registration|
  json.extract! registration, :id, :numberOfSemester, :termsAccepted
  json.url registration_url(registration, format: :json)
end
