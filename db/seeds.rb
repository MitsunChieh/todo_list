# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.destroy_all

# 在 iterm 命令列輸入 `rails db:seed` 生成原始資料
todo_list = [
  {
    title:    '製作小工具',
    due_date: '2017-11-05'
  },
  {
    title:    'Piano class',
    due_date: '2017-11-12'
  },
  {
    title:    'Buy Milk',
    due_date: '2017-11-18'
  },
  {
    title:    'Booking tickets',
    due_date: '2017-11-19'
  },
  {
    title:    'Final project',
    due_date: '2018-01-01'
  },
]

todo_list.each do |todo|
  Todo.create(
    title:    todo[:title],
    due_date: todo[:due_date]
  )
end
