json.extract! funcionario, :id, :nome, :usuario, :password, :password_confirmation, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
