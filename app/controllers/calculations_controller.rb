class CalculationsController < ApplicationController
  def calc_square
    # The Parameters look like this: {"user_number"=>"80"}
    
    the_number = params["user_number"].to_i
    
    the_square = the_number ** 2
    
    render(
      {
        :template => "calc_templates/show_square.html.erb",
        :locals => {
          :result => the_square,
          :user_num => the_number
        }
      }
    )
  end
  
  def calc_root
    
    the_number = params["user_number"].to_i
    
    the_root = the_number ** 0.5
    
    render(
      {
        :template => "calc_templates/show_square_root.html.erb",
        :locals => {
          :result => the_root,
          :user_num => the_number
        }
      }
    )
  end
  
  def monthly
    
    bps = params["bp"].to_f
    years = params["years"].to_i
    pv = params["pv"].to_i
    
    rate = bps / 10000
    
    monthly = (rate / 12 * pv) / (1 - (1 + rate / 12) ** (-years * 12))
    
    render(
      {
        :template => "calc_templates/show_monthly.html.erb",
        :locals => {
          :rate => bps / 100,
          :years => years,
          :pv => pv,
          :monthly => monthly
        }
      }
    )
  end
  
  def calc_random
    
    small = params["small"].to_i
    big = params["big"].to_i
    result = rand(small..big)

    render(
      {
        :template => "calc_templates/show_random.html.erb",
        :locals => {
          :small => small,
          :big => big,
          :result => result
        }
      }
    )
  end
  
  def square_new
    render(:template => "calc_templates/square_new.html.erb")
  end
  
  def square_results
    
    @number = params[:user_number].to_f
    @square = @number ** 2
    
    render(:template => "calc_templates/square_results.html.erb")
  end
  
  def root_new
    render(:template => "calc_templates/root_new.html.erb")
  end
  
  def root_results
    
    @number = params[:user_number].to_f
    @root = @number ** 0.5
    
    render(:template => "calc_templates/root_results.html.erb")
  end
  
  def payment
    render(:template => "calc_templates/payment.html.erb")
  end
  
  def payment_results
    
    @APR = params[:APR].to_f
    @years = params[:years].to_f
    @principal = params[:principal].to_f
    
    @monthly = (@APR / 1200 * @principal) / (1 - (1 + @APR / 1200) ** (-@years * 12))
    
    render(:template => "calc_templates/payment_results.html.erb")
  end
  
  def random
    render(:template => "calc_templates/random.html.erb")
  end
  
  def random_results
    
    @small = params[:small].to_f
    @big = params[:big].to_f
    @random_result = rand(@small..@big)
    render(:template => "calc_templates/random_results.html.erb")
  end
  
end