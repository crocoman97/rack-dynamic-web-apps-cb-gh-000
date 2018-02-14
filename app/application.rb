class Application

  def call(env)
    resp = Rack::Response.new
    number_1 = Kernel.rand(1..2)
    number_2 = Kernel.rand(1..2)
    number_3 = Kernel.rand(1..2)
    resp.write "#{number_1}\n"
    resp.write "#{number_2}\n"
    resp.write "#{number_3}\n"
    if number_1 == number_2 && number_3 == number_2
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish
  end

end
