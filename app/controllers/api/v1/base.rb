module API
    module V1
      class Base < Grape::API
        mount API::V1::Tips
        mount API::V1::Resorts
      end
    end
  end