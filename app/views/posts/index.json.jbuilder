json.array!(@posts) do |post|
  json.extract! post, :id, :name, :content, :event_id, :course_id, :user_id
  json.url post_url(post, format: :json)
end
