Rails.application.routes.draw do
  mount Homeland::Jobs::Engine => "/homeland-jobs"
end
