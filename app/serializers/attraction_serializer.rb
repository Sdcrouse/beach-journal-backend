class AttractionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :name, :description
end
