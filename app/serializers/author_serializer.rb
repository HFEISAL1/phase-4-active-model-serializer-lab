class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile

  has_many :posts, serializer: AuthorPostSerializer

  def profile
    self.object.profile.as_json(only: [:username, :email, :bio, :avatar_url])
  end


end