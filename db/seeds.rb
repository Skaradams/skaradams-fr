[User, Article, Category].each { |model| model.destroy_all }

user = User.create name: "Skaradams", 
  email: "skaradams@hotmail.com", 
  password: "lakers271969", 
  password_confirmation: "lakers271969"

["music", "games"].each do |identifier|
  Category.create identifier: identifier
end

["Moon safari", "Doppelgangaz"].each do |title|
  Article.create user: user,
    title: title,
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    category: Category.first,
    published: true
end

["Animal Crossing", "Monster hunter"].each do |title|
  Article.create user: user,
    title: title,
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    category: Category.last,
    published: true
end