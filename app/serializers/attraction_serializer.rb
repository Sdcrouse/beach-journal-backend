class AttractionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :name, :description, :beach_id
end
