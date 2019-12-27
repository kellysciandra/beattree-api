json.array!(@beats) do |beat|
    json.extract! beat, :id, :title, :description, :file
    json.url beat_url(beat, format: :json)
end 