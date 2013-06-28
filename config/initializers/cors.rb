 require "rack/cors"
   Rails.configuration.middleware.use Rack::Cors do
     allow do
       origins "*"
       resource "/orgs", :headers => :any, :methods => [:get, :post, :put, :delete, :options], :origin => '*'
       resource "/orgs/:id", :headers => :any, :methods => [:get, :post, :put, :delete, :options], :origin => '*'
       resource "/organizations", :headers => :any, :methods => [:get, :post, :put, :delete, :options], :origin => '*'
   end
 end
