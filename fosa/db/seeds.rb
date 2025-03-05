# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

puts "Очистка базы..."
Like.destroy_all
Tag.destroy_all
Article.destroy_all
ProductCard.destroy_all

puts "Создание статей..."

article1 = Article.create!(
  title:   "Секреты крепкого сна",
  content: "Небольшой текст о том, как улучшить сон..."
)
article2 = Article.create!(
  title:   "Побеждаем бессонницу",
  content: "Советы и рекомендации для тех, у кого бессонница..."
)
article3 = Article.create!(
  title:   "5 вечерних ритуалов",
  content: "Как подготовиться ко сну и улучшить его качество..."
)

puts "Создание товаров..."

product1 = ProductCard.create!(
  title:       "Удобная подушка",
  description: "Подушка с эффектом памяти, которая обеспечит здоровый сон."
)
product2 = ProductCard.create!(
  title:       "Ароматическая свеча",
  description: "Способствует расслаблению и созданию спокойной атмосферы."
)
product3 = ProductCard.create!(
  title:       "Маска для сна",
  description: "Обеспечивает полную темноту и комфорт для глаз."
)

puts "Создание лайков..."

# 1-я статья: 10 лайков
10.times do
  Like.create!(article: article1)
end

# 2-я статья: 15 лайков
15.times do
  Like.create!(article: article2)
end

# 3-я статья: 23 лайка
23.times do
  Like.create!(article: article3)
end

puts "Создание тегов..."

# Предположим, у нас в модели Tag есть поле name (string) и поле article_id (integer).
# Пример: Tag.belongs_to :article

Tag.create!(name: "Спокойствие",    article: article1)
Tag.create!(name: "Здоровый сон",   article: article1)
Tag.create!(name: "Бессонница",     article: article2)
Tag.create!(name: "Методы борьбы",  article: article2)
Tag.create!(name: "Ритуалы сна",    article: article3)
Tag.create!(name: "Здоровые привычки", article: article3)

puts "Готово! База заполнена."

# использовать более абстрактные способы для написания, нелинейное написание кода, не повторять по несколько раз одно и то же (посмотреть урок с 1 модуля про сиды, в гх есть код)