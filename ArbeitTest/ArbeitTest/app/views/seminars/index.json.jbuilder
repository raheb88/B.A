json.array!(@seminars) do |seminar|
  json.extract! seminar, :id, :title, :description
  json.url seminar_url(seminar, format: :json)
end
