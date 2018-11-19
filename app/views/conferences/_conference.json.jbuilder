json.extract! conference, :id, :title, :intro, :date, :time, :place, :event_id, :speaker_id, :created_at, :updated_at
json.url conference_url(conference, format: :json)
