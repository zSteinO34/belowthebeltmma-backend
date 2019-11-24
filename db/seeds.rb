# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "test1", password: "123", email: "email.com", isAdmin: true, bio: "example bio")
user2 = User.create(username: "popo", password: "1", email: "email.com", isAdmin: false, bio: "example bio for mr. popo")

post1 = Post.create(title: "Post 1", img: "https://i0.wp.com/belowthebeltmma.com/wp-content/uploads/2019/02/Podcast-logo-e1549927316890.jpg?zoom=2&resize=880%2C660",
    content: "Caerphilly chalk and cheese queso. Cheese on toast port-salut blue castello paneer danish fontina fromage melted cheese bocconcini. Parmesan fromage frais bocconcini cheesecake pecorino halloumi port-salut parmesan. Mascarpone cheddar dolcelatte melted cheese lancashire who moved my cheese melted cheese squirty cheese. When the cheese comes out everybody's happy cheesecake.", 
    user_id: 1);
post2 = Post.create(title: "Post 2", img: "https://i0.wp.com/belowthebeltmma.com/wp-content/uploads/2019/02/Podcast-logo-e1549927316890.jpg?zoom=2&resize=880%2C660", 
    content: "blah blah", 
    user_id: 1);
post3 = Post.create(title: "Post 3", img: "https://i0.wp.com/belowthebeltmma.com/wp-content/uploads/2019/02/Podcast-logo-e1549927316890.jpg?zoom=2&resize=880%2C660", 
    content: "blah blah blah", 
    user_id: 1);

like1 = Like.create(user_id: 2, post_id: 1);
like2 = Like.create(user_id: 2, post_id: 2);

comment = Comment.create(user_id: 1, post_id: 1, comment: "this is a comment");

tag = Tag.create(name: "mma")

post_tag = PostTag.create(post_id: 1, tag_id: 1)