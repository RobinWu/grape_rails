class Twitter::API < Grape::API
  mount Twitter::APIV1
  mount Twitter::APIV2
end
