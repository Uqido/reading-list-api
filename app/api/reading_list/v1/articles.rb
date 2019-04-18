module ReadingList
  module V1
    class Articles < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      resource :articles do

        desc 'Return list of articles' do
          summary 'Returns all articles'
          success ReadingList::Entities::Article
          is_array true
        end
        get do
          articles = Article.all
          present articles, with: ReadingList::Entities::Article
        end

        desc 'Create a new Article' do
          summary 'Creates a new Article and gives it Back'
          success ReadingList::Entities::Article
          params  ReadingList::Entities::Article.documentation
        end
        post do
          article = Article.create(params)
          present article, with: ReadingList::Entities::Article
        end

      end
    end
  end
end