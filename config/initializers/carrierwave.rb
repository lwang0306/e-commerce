CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => 'AKIAJYCGOO66EVOPL5JA',                        # required
      :aws_secret_access_key  => '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'                         # required
  }
  config.fog_directory  =  '597project'                   # required
end