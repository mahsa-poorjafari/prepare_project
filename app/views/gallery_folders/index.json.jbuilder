json.array!(@gallery_folders) do |gallery_folder|
  json.extract! gallery_folder, :id, :title_fa, :title_en
  json.url gallery_folder_url(gallery_folder, format: :json)
end
