# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "date"

User.create!(
            name:                  'test_user1',
            email:                 'test@example.com',
            password:              'password',
            password_confirmation: 'password')

Post.create(
            user_id:               1,
            tag:                   '映画'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '映画',
                        label:       '公開日',
                        order:       '1',
                        datatype:    'date_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '映画',
                        label:       'タイトル',
                        order:       '2',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '映画',
                        label:       'コメント',
                        order:       '3',
                        datatype:    'textarea_contents'
)

TextContent.create!(
                        post_id:    1,
                        label:      'タイトル',
                        content:    'アバター'
)

DateContent.create!(
                        post_id:    1,
                        label:      '公開日',
                        content:    DateTime.new(2009, 12, 10)
)

TextareaContent.create!(
                        post_id:    1,
                        label:      'コメント',
                        content:    'よかった。'
)