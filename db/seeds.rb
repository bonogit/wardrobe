# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(lvl1: 'top')
Category.create(lvl1: 'outwear')
Category.create(lvl1: 'dress')
Category.create(lvl1: 'pant')
Category.create(lvl1: 'short')
Category.create(lvl1: 'skirt')
Category.create(lvl1: 'accesory')
Category.create(lvl1: 'bag')
Garment.create(garment_name: 'patch style jeans', status: 'in stock', brand: '7 for all man kind', size: 'm',
 buy_value: 80, buy_date: '2015-10-1', record_date: '2016-2-2', user_id: 1, category_id: 4, description: 'patch style jeans' )
Garment.create(garment_name: 'coat', status: 'in stock', brand: 'burberry', size: 'm',
 buy_value: 1000, buy_date: '2015-10-1', record_date: '2016-2-2', user_id: 1, category_id: 2, description: '2015 fall London fashion show runway' )
Garment.create(garment_name: 'Metallic textured-leather wallet', status: 'in stock', brand: 'COMME DES GARÇONS',
 buy_value: 200, buy_date: '2015-10-1', record_date: '2016-2-2', user_id: 1, category_id: 7, description: 'Metallic textured-leather wallet' )
Garment.create(garment_name: 'Sweater Red', status: 'in stock', brand: 'PINKQUEEN.COM',
 buy_value: 60, buy_date: '2015-10-1', record_date: '2016-2-2', user_id: 1, category_id: 1, description: 'Womens Reindeer Snowflake Ugly Christmas Sweater Red' )
