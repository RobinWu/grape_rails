module Twitter
  class APIV1 < Grape::API
    version 'v1'
    format :json
    prefix :api

    resource :statuses do
      desc 'Return a public timeline.'
      get :public_timeline do
        [1,2]
      end
    end

  end
end
