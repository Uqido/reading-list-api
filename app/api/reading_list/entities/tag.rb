module ReadingList
  module Entities
    class Tag < Grape::Entity
      expose :name
    end
  end
end