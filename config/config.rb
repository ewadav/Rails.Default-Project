container = RailsDefaultProject

config = YAML::load_file('config/config.yml') || {}
shared = config['global'] || {}

specific = config.delete(Rails.env.to_s)
if specific
  shared.merge! specific
end

if container::UNICORN && config['unicorn'].present?
  key = container::SERVER ? 'server' : 'local'
  data = config['unicorn']
  local = data.delete('local')
  server = data.delete('server')
  if key == 'server'
    data.merge! server if server
  else
    data.merge! local if local
  end
  shared.merge! data
end

if container::SERVER && config['server'].present?
  shared.merge! config.delete('server')
elsif container::SERVER == false && config['local'].present?
  shared.merge! config.delete('local')
end

container::Config = shared

def Rails.config
  RailsDefaultProject::Config
end
