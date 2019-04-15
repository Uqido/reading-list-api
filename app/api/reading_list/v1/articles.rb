module ReadingList
  module V1
    class Articles < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      resource :articles do

        desc 'Return list of books'
        get do
          articles = Article.all
          present articles
        end

      end
    end
  end
end