Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "homepage"})

  get("/square/new", { :controller => "zebra", :action => "square"})

  get("/square/results", { :controller => "zebra", :action => "squareresults"})
  
  get("square_root/new", { :controller => "zebra", :action => "sqroot"})

  get("square_root/results", { :controller => "zebra", :action => "sqrootresults"})

  get("/payment/new", { :controller => "zebra", :action => "payment"}) 

  get("/payment/results", { :controller => "zebra", :action => "paymentresults"}) 

  get("/random/new", { :controller => "zebra", :action => "random"})

  get("/random/results", { :controller => "zebra", :action => "randomresults"})
end
