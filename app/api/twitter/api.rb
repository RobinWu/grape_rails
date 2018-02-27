module Twitter
  class API < Grape::API
    version 'v1'
    format :json
    prefix :api

    resource :statuses do
      desc 'Return a public timeline.'
      get :public_timeline do
        [1,2,3,4]
      end
    end

  end
end
