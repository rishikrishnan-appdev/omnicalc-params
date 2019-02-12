Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get("/flexible/square/:user_number", { :controller => "calculations", :action => "calc_square" })
  get("/flexible/square_root/:user_number", { :controller => "calculations", :action => "calc_root" })
  get("/flexible/payment/:bp/:years/:pv", { :controller => "calculations", :action => "monthly" })
  get("/flexible/random/:small/:big", { :controller => "calculations", :action => "calc_random" })
end
