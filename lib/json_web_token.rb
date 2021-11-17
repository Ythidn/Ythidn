class JsonWebToken

    class << self
        def encode(payload, expiry = 24.hours.from_now)
            payload[:expiry] = expiry.to_i
            secret_key_base = Rails.application.secrets.secret_key_base JWT.encode(payload, secret_key_base)
        end
    
        def decode(token)
            secret_key_base = Rails.application.secrets.secret_key_base 
            body = JWT.decode(token, secret_key_base) [0] 
            HashWithIndifferentAccess.new body 
        rescue 
            nil
        end
    end
end

# 48d4b755c2dc45c67b33c6f64ccf8c142f60004567d655ef852b6e326de84eac39a120a170072cab65e8d14bbe7feffdcb25a120b1dab7a9e7802a6315f0e02e
