class ApplicantSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :title, :tags 
  end
  