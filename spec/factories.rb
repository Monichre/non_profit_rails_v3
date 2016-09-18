FactoryGirl.define do
  factory(:user) do
    first_name('Liam')
    last_name('Ellis')
    email('liamhellis@gmail.com')
    password('8milero')
  end
end
