class CollectMetadataJob < ApplicationJob
  queue_as :default

  def perform(article)
    page = MetaInspector.new(article.url)

    article.update(
      title: page.best_title,
      description: page.best_description,
      image: page.images.best
    )
  end
end
