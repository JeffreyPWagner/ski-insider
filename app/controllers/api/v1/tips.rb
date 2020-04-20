module API
    module V1
      class Tips < Grape::API
        include API::V1::Defaults
        resource :tips do
          desc "Return all tips"
          get "" do
            Tip.all
          end
        desc "Return a tip"
          params do
            requires :id, type: String, desc: "ID of the tip"
          end
          get ":id" do
            Tip.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end