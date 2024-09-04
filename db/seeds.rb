admin_email = 'admin@email.com'
admin_password = 'passwordadmin'  
admin_phone_number = '9672648861'

admin = User.find_or_initialize_by(email: admin_email)
admin.update(
  password: admin_password,
  password_confirmation: admin_password,
  role: 'admin',
  phone_number: admin_phone_number,
  name: 'Admin'
)

puts "Seeded admin user: #{admin.email}"
