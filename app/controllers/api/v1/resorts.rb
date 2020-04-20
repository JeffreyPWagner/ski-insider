module API
    module V1
      class Resorts < Grape::API
        include API::V1::Defaults
        resource :resorts do
          desc "Return all resorts"
          get "" do
            Resort.all
          end
        desc "Return a resort"
          params do
            requires :id, type: String, desc: "ID of the resort"
          end
          get ":id" do
            Resort.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end