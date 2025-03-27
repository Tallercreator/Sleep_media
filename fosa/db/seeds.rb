require 'yaml'

puts "=== Загрузка абстрактных данных из YAML ==="

# Путь к нашему YAML-файлу
seed_file = Rails.root.join("db", "seed_data", "abstract_data.yml")

# Считываем содержимое (получаем хэш вида {"articles"=> [...], "product_cards"=> [...], "sonniks"=> [...]})
data = YAML.load_file(seed_file)

#
# Если вы хотите при каждом запуске сидов очищать таблицы — сделайте destroy_all:
#
Article.destroy_all
ProductCard.destroy_all
Sonnik.destroy_all
# (Аналогично, если есть другие модели, которые хотим почистить)

#
# Создаём записи из data["articles"]
#
articles_data = data["articles"] || []
articles_data.each do |article_attrs|
  Article.create!(article_attrs)
end
puts "Создано статей: #{Article.count}"

#
# Создаём записи из data["product_cards"]
#
products_data = data["product_cards"] || []
products_data.each do |p_attrs|
  ProductCard.create!(p_attrs)
end
puts "Создано товаров: #{ProductCard.count}"

#
# Создаём записи из data["sonniks"]
#
sonniks_data = data["sonniks"] || []
sonniks_data.each do |s_attrs|
  Sonnik.create!(s_attrs)
end
puts "Создано записей сонника: #{Sonnik.count}"

puts "=== Готово! Данные из YAML загружены. ==="
