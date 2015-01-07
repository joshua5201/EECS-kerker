json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :instructor_id, :semester
  json.url course_url(course, format: :json)
end
