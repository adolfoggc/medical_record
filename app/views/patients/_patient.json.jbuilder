json.extract! patient, :id, :name, :birthday, :created_at, :updated_at
json.url patient_url(patient, format: :json)
