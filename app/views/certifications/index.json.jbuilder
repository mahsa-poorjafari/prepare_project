json.array!(@certifications) do |certification|
  json.extract! certification, :id, :title_fa, :title_en
  json.url certification_url(certification, format: :json)
end
