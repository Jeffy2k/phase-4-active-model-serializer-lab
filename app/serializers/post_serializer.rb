class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author, :short_content, :tags

  has_many :tags, serializer: TagSerializer

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
