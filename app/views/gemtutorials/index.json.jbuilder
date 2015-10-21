json.array!(@gemtutorials) do |gemtutorial|
  json.extract! gemtutorial, :id, :name, :repo, :description, :genre, :score
  json.url gemtutorial_url(gemtutorial, format: :json)
end
