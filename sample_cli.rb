require 'thor'
require 'matrix'

require_relative './config/openai.rb'
Dir[File.expand_path("../ruby_openai", __FILE__) << "/*.rb"].each do |file|
  require file
end

class SampleCLI < Thor

	# 以降sample_cli.rbへ記述する場合は、ここに記述します

	private

  def client
    OpenAI::Client.new
  end

  def model_version(model_version = "gpt-3.5-turbo")
    model_version = model_version
  end

  def gets_chomp
    STDIN.gets.chomp
  end
end

puts "---------------------------------"
puts "Welcome to Sample CLI."
puts "---------------------------------"
SampleCLI.start(ARGV)
puts "---------------------------------"
puts "Thank you for using our service."
puts "---------------------------------"
