json.array!(@steps) do |step|
  json.extract! step, :id, :path, :code, :note, :sequence
  json.url step_url(step, format: :json)
end
