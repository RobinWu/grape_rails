module Twitter
  class APIV1 < Grape::API
    version 'v1'
    format :json
    formatter :json, Grape::Formatter::Jbuilder
    prefix :api

    resource :statuses do
      desc 'Return a public timeline.'
      get :public_timeline do
        [1,2]
      end

      desc '/statuses/:id'
      get ':id', jbuilder: 'statuses/show.jbuilder' do
        @user = Status.find(params[:id])
        @user.created_at = Time.now
      end
    end

  end
end
