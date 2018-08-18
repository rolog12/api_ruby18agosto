class PostSerializer < ActiveModel::Serializer
    attributes :id, :body
    belongs_to :user
end

class UserSerializer < ActiveModel::Serializer
    attributes :name
    
end