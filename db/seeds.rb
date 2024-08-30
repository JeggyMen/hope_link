admin = User.find_or_create_by!(email: 'admin@email.com') do |user|
  user.name = 'Admin'
  user.password = 'passwordadmin'  # Make sure to change this to a strong password
  user.password_confirmation = 'passwordadmin'
  user.role = 'admin'
  user.phone_number = '9672648861'
end

puts "Admin user created with email: #{admin.email}"