json.extract! cliente, :id, :nome, :email, :usuario, :password_digest, :saldo_pontos, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
