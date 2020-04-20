class TipSerializer < ActiveModel::Serializer
    attributes :id, :title, :body, :resort_id, :score
 end