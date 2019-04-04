# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  url         :string
#  title       :string
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Article < ApplicationRecord
  after_save :collect_metadata

  validates_presence_of :url

  private

    def collect_metadata
      # TODO: CALL JOB TO COLLECT METADATA
    end
end
