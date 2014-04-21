json.array!(@pages) do |page|
  json.extract! page, :id, :title, :html_text
  json.url page_url(page, format: :json)
end
