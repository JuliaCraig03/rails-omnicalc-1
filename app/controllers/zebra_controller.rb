class ZebraController < ApplicationController
  def homepage
    render({ :template => "game_templates/homepage" })
   end

  def square
    render({ :template => "game_templates/square" })
   end

  def squareresults
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2
    render({ :template => "game_templates/squareresults" })
   end

  def sqroot
    render({ :template => "game_templates/sqroot" })
   end

  def sqrootresults
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 0.5
    render({ :template => "game_templates/sqrootresults" })
   end

  def payment
    render({ :template => "game_templates/payment" })
   end

  def paymentresults
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_f

    @apr_divided_by_100 = @apr / 100 
    @r = @apr_divided_by_100 / 12
    @n = @years * 12

    @numerator = @r * @pv
    @denom = (1-(1+ @r)**-@n)

    @payment = @numerator / @denom
    render({ :template => "game_templates/paymentresults" })
   end

  def random
    render({ :template => "game_templates/random" })
   end

  def randomresults
    @min_num = params.fetch("user_min").to_f
    @max_num = params.fetch("user_max").to_f
  
    @the_result = rand(@min_num..@max_num)
    render({ :template => "game_templates/randomresults" })
   end
end
