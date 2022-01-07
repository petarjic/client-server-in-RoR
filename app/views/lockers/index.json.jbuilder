json.array!(@lockers) do |locker|
  json.extract! locker, :id, :lockerNumber, :location, :type, :combo
  json.url locker_url(locker, format: :json)
end
