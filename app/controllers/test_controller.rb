# class TestController < ApplicationController
# end

# This is just a test controller to verify that login works per ctd assignment notes

class TestController < ApplicationController
    include AuthenticationCheck
  
    before_action :is_user_logged_in
  
    def show
      render json: { message: "If you see this, you're logged in!" },
        status: :ok
    end
end