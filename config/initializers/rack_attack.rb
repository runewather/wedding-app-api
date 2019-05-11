class Rack::Attack
    Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

    safelist('allow-localhost') do |req|
        '127.0.0.1' == req.ip || '::1' == req.ip
    end

end