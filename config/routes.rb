Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "insert_item" })

  post("/backdoor", { :controller => "items", :action => "create_row" })
end
