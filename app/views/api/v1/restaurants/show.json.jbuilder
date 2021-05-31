json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content
  # info about user in comment object
  json.user do
    json.id comment.user.id
    json.email comment.user.email
  end
end
