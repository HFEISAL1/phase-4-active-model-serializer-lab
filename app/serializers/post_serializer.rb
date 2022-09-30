class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author
  belongs_to :author
  has_many :tags



  
end
