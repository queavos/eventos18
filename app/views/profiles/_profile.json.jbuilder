json.extract! profile, :id, :lastName, :firstName, :birthDate, :idNumber, :country, :geren, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
