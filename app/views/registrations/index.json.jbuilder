json.array!(@registrations) do |registration|
  json.extract! registration, :id, :studentNumber, :firstName, :lastName, :email, :lockerNumber, :lockerType, :lockerCombo, :numberOfSemesters, :termsAccepted
  json.url registration_url(registration, format: :json)
end
