class TagSerializer
    include FastJsonapi::ObjectSerializer
    attributes :tags
  end
  