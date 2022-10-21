json.extract! order_detail, :id, :date, :num_items, :order_id, :article_id, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
