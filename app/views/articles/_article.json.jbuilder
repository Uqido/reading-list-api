json.extract! article, :id, :url, :title, :description, :image, :created_at, :updated_at
json.url article_url(article, format: :json)
