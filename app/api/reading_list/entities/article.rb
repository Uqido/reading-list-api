module ReadingList
  module Entities
    class Article < Grape::Entity
      expose :title
      expose :description
      expose :image
      expose :url, documentation: { type: 'string', desc: 'Article url', required: true }
      expose :created_at
      expose :tags, using: ReadingList::Entities::Tag
    end
  end
end