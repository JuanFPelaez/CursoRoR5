json.extract! post, :id, :title, :introduction, :content, :url, :image_url, :date, :created_at, :updated_at
json.url post_url(post, format: :json)
