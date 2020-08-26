User.create!(username: 'Renata',
             email: 'admin@example.com',
             password: 'renata_admin_password_123',
             password_confirmation: 'renata_admin_password_123',
             admin: true)

# 10.times do |_i|
#   User.create!(username: Faker::Name.unique.first_name,
#                email: Faker::Internet.unique.email,
#                password: 'password',
#                password_confirmation: 'password',
#                admin: false)
# end
#
# pseudo_rng = Random.new
#
# 25.times do |i|
#   post = Post.new
#   post.title = Faker::Lorem.sentence(word_count: 3, random_words_to_add: 7)
#   post.body = Faker::Lorem.paragraph_by_chars(number: 1500)
#   post.user = User.first
#   post.thumbnail.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_thumbnail.jpg")
#   post.banner.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_banner.jpg")
#   post.views = Faker::Number.between(from: 1, to: 5000)
#   post.save
#
#   (2 + pseudo_rng.rand(8)).times do |_j|
#     comment = post.comments.build(body: Faker::Lorem.paragraph_by_chars(number: 500),
#                                   user: User.find(2 + pseudo_rng.rand(10)))
#     comment.save
#     pseudo_rng.rand(5).times do |_k|
#       nested_comment = comment.comments.build(body: Faker::Lorem.paragraph_by_chars(number: 500),
#                                               user: User.find(2 + pseudo_rng.rand(1)),
#                                               reply: true)
#       nested_comment.save
#     end
#   end
# end