module HospedesHelper

  def yield_docS 
    file = File.open("./my_file","w") { |content| content.puts "ok" }
  end
  
end
