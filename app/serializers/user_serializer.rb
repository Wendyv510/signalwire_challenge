class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :title, :tags 
  end
  