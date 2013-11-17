CarrierWave.configure do |config|

  #if its in the prod, i.e. heroku eviro, configure S3, if on local machine do something else 
  if Rails.env.production?

      config.fog_credentials = {
        :provider               => 'AWS',                       # required
        :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],                       # required
        :aws_secret_access_key  => ENV['AWS_SECRET_KEY']                       # required
      }
      config.fog_directory  = ENV['AWS_BUCKET']               # required

      # use the S3
      config.storage = :fog

  #for test enviro use local storage 
  else
      config.storage = :file
  
  end

end