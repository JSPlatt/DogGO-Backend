class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :username
  has_one :user
end
