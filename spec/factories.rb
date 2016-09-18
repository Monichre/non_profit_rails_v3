FactoryGirl.define do
  factory(:user) do
    first_name('Liam')
    last_name('Ellis')
    email('liamhellis@gmail.com')
    password('8milero')
  end
end

FactoryGirl.define do
  factory(:non_profit) do
    name("Sharing and Caring Hands")
    mission('We share and care')
    email('liamhellis@gmail.com')
    password('8milero')
  end
end

FactoryGirl.define do
  factory(:post) do
    caption("This non-profit is great")
  end
end

FactoryGirl.define do
  factory(:category) do
    name("Humanitarian")
  end
end
