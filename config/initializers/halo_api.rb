# Halo API wrapper configuration
Halo.configure do |config|
  config.api_key = ENV['HALO_API_KEY']
  config.region  = ENV['HALO_REGION']
  config.redis   = ENV['HALO_REDIS']
  config.ttl     = ENV['HALO_TTL']
end