Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get("/flexible/square/:user_number", { :controller => "calculations", :action => "calc_square" })
  get("/flexible/square_root/:user_number", { :controller => "calculations", :action => "calc_root" })
  get("/flexible/payment/:bp/:years/:pv", { :controller => "calculations", :action => "monthly" })
  get("/flexible/random/:small/:big", { :controller => "calculations", :action => "calc_random" })
  
  get("/square/new", { :controller => "calculations", :action => "square_new" })
  get("/square/results",  { :controller => "calculations", :action => "square_results" })
  
  get("/square_root/new", { :controller => "calculations", :action => "root_new" })
  get("/square_root/results",  { :controller => "calculations", :action => "root_results" })
  
  get("/payment/new", { :controller => "calculations", :action => "payment" })
  get("/payment/results",  { :controller => "calculations", :action => "payment_results" })  
  
  get("/random/new", { :controller => "calculations", :action => "random" })
  get("/random/results",  { :controller => "calculations", :action => "random_results" }) 
  
  
  get("/square_root/new", { :controller => "calculations", :action => "square_root_new" })
  get("/payment/new", { :controller => "calculations", :action => "payment_new" })
  get("/random/new", { :controller => "calculations", :action => "random_new" })

end
