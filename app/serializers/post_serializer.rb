class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :author
  has_one :user
end
