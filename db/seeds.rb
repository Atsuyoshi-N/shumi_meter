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

# Post.create(
#             user_id:               1,
#             tag:                   '映画'
# )


TagManagement.create!(
                        user_id:     1,
                        tag:         '映画',
                        label:       'タイトル',
                        order:       '1',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '映画',
                        label:       '公開日',
                        order:       '2',
                        datatype:    'date_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '映画',
                        label:       'コメント',
                        order:       '3',
                        datatype:    'textarea_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '映画',
                        label:       '画像',
                        order:       '4',
                        datatype:    'image_contents'
)

# TextContent.create!(
#                         post_id:    1,
#                         label:      'タイトル',
#                         content:    'アバター'
# )

# DateContent.create!(
#                         post_id:    1,
#                         label:      '公開日',
#                         content:    DateTime.new(2009, 12, 10)
# )

# TextareaContent.create!(
#                         post_id:    1,
#                         label:      'コメント',
#                         content:    'よかった。'
# )

TagManagement.create!(
                        user_id:     1,
                        tag:         'music',
                        label:       'タイトル',
                        order:       '1',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'music',
                        label:       'artist',
                        order:       '2',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'music',
                        label:       'ジャケット',
                        order:       '3',
                        datatype:    'image_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '本',
                        label:       'タイトル',
                        order:       '1',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '本',
                        label:       '著者',
                        order:       '2',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '本',
                        label:       '感想',
                        order:       '3',
                        datatype:    'textarea_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '本',
                        label:       '読了日',
                        order:       '4',
                        datatype:    'date_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         '本',
                        label:       '表紙',
                        order:       '5',
                        datatype:    'image_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'youtube',
                        label:       '動画名',
                        order:       '1',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'youtube',
                        label:       '投稿者',
                        order:       '2',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'youtube',
                        label:       'URL',
                        order:       '3',
                        datatype:    'link_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'youtube',
                        label:       'コメント',
                        order:       '4',
                        datatype:    'textarea_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'ラーメン',
                        label:       '店名',
                        order:       '1',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'ラーメン',
                        label:       'メニュー',
                        order:       '2',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'ラーメン',
                        label:       '写真',
                        order:       '3',
                        datatype:    'image_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'ラーメン',
                        label:       'コメント',
                        order:       '4',
                        datatype:    'textarea_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'コスメ',
                        label:       '名前',
                        order:       '2',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'コスメ',
                        label:       'カテゴリ',
                        order:       '2',
                        datatype:    'text_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'コスメ',
                        label:       '写真',
                        order:       '3',
                        datatype:    'image_contents'
)

TagManagement.create!(
                        user_id:     1,
                        tag:         'コスメ',
                        label:       'コメント',
                        order:       '4',
                        datatype:    'textare_contents'
)