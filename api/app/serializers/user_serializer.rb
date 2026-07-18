class UserSerializer < BaseSerializer
  attributes :name, :email, :role, :created_at, :updated_at
end
