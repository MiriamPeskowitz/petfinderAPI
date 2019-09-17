class CommentSerializer < ActiveModel::Serializer
  belongs_to :pet
  attributes :id, :name, :content, :contact
end
