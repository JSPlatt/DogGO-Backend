class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :username, :profilesrc, :image
  has_one :user
end
