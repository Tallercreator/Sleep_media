class AddArticleToTags < ActiveRecord::Migration[8.0]
  def change
    add_reference :tags, :article, null: false, foreign_key: true
  end
end
