json.array!(@hats) do |hat|
  json.extract! hat, :id, :name, :image, :price, :description
  json.url hat_url(hat, format: :json)
end
