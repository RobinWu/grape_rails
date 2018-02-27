module Twitter
  class APIV2 < Grape::API
    version 'v2'
    format :json
    prefix :api

    resource :statuses do
      desc 'Return a public timeline.'
      get :public_timeline do
        [22,23]
      end
    end

  end
end
