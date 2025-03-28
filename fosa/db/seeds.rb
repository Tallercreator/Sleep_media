# db/seeds.rb

# require 'yaml'

# puts "=== Загрузка абстрактных данных из YAML ==="

# Путь к нашему YAML-файлу
# seed_file = Rails.root.join("db", "seed_data", "abstract_data.yml")

# Считываем содержимое (получаем хэш вида {"articles"=> [...], "product_cards"=> [...], "sonniks"=> [...]})
# data = YAML.load_file(seed_file)

#
# Если вы хотите при каждом запуске сидов очищать таблицы — сделайте destroy_all:
#
# Article.destroy_all
# ProductCard.destroy_all
# Sonnik.destroy_all
# (Аналогично, если есть другие модели, которые хотим почистить)

#
# Создаём записи из data["articles"]
#
# articles_data = data["articles"] || []
# articles_data.each do |article_attrs|
#   Article.create!(article_attrs)
# end
# puts "Создано статей: #{Article.count}"

# #
# # Создаём записи из data["product_cards"]
# #
# products_data = data["product_cards"] || []
# products_data.each do |p_attrs|
#   ProductCard.create!(p_attrs)
# end
# puts "Создано товаров: #{ProductCard.count}"

# #
# Создаём записи из data["sonniks"]
#
sonniks_data = data["sonniks"] || []
sonniks_data.each do |s_attrs|
  Sonnik.create!(s_attrs)
end
puts "Создано записей сонника: #{Sonnik.count}"

puts "=== Готово! Данные из YAML загружены. ==="

# db/seeds.rb

require "yaml"

puts "Загрузка статей из YAML..."

articles_file = Rails.root.join("db", "articles.yml")
data = YAML.load_file(articles_file)

# (Опционально) Очищаем таблицу:
Article.destroy_all

article_data = data["articles"] || []
article_data.each do |attrs|
  Article.create!(attrs)
end

puts "Создано статей: #{Article.count}"
puts "Готово!"

# db/seeds.rb

require "yaml"

puts "Загрузка товаров из YAML..."

products_file = Rails.root.join("db", "products.yml")
data = YAML.load_file(products_file)

# (Опционально) чистим таблицу, если нужно
ProductCard.destroy_all

product_data = data["products"] || []
product_data.each do |attrs|
  ProductCard.create!(attrs)
end

puts "Создано товаров: #{ProductCard.count}"
puts "Готово!"

## db/seeds.rb

require "yaml"

puts "Загрузка записей сонника из YAML..."

sonnik_file = Rails.root.join("db", "sonniks.yml")
data = YAML.load_file(sonnik_file)  # <-- ВАЖНО: здесь мы объявляем переменную data

Sonnik.destroy_all

sonniks_data = data["sonniks"] || []
sonniks_data.each do |attrs|
  Sonnik.create!(attrs)
end

puts "Создано записей сонника: #{Sonnik.count}"



