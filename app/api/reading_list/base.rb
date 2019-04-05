module ReadingList
  class Base < Grape::API
    mount ReadingList::V1::Articles
  end
end