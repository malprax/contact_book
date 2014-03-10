CarrierWave.configure do |config|
  #config.storage = :fog unless Rails.env == "test"
  #config.storage = :file if Rails.env == "test"
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJGL6LTZUXZ64BMLA',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'ap-southeast-1'  # optional, defaults to 'us-east-1'
  }
  #config.fog_directory  = 'noowpt-prod'  if Rails.env == "production"                   # required
  #config.fog_directory  = 'noowpt-dev'  if Rails.env == "development" 
  #config.fog_directory  = 'noow-test'  if Rails.env == "test" 
   config.fog_directory  = 'sekolahruniah'                     # required
  #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  config.fog_authenticated_url_expiration = 60 # 10 minutes
end