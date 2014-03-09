CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJGL6LTZUXZ64BMLA',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'oregon',                  # optional, defaults to 'us-east-1'
    #:host                   => 'schoolruniah.s3-website-us-east-1.amazonaws.com',             # optional, defaults to nil
    #:endpoint               => 'sekolah.s3-website-us-west-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'sekolah'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
