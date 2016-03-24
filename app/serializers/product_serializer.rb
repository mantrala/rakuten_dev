class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :advertiser

  def advertiser
    object.advertiser.name
  end
end
