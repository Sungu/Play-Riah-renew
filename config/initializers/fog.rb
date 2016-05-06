CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        
    aws_access_key_id:  'AKIAITJFXL4OJJKIC6RQ',                             
    aws_secret_access_key: '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',
    region:                'ap-northeast-2',                  
  }
  config.fog_directory  = 'playriahrenew'                          
end