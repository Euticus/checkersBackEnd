class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :encrypted_password
  end