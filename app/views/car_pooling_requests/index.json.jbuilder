json.array!(@car_pooling_requests) do |car_pooling_request|
  json.extract! car_pooling_request, :id, :email, :password, :user_id, :travel_id, :prefer_from, :prefer_to
  json.url car_pooling_request_url(car_pooling_request, format: :json)
end
