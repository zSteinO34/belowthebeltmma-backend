user1 = User.create(username: "test1", password: "123", email: "email.com", isAdmin: true, bio: "example bio")
user2 = User.create(username: "popo", password: "1", email: "email.com", isAdmin: false, bio: "example bio for mr. popo")

post1 = Post.create(title: "Post 1", img: "https://i0.wp.com/belowthebeltmma.com/wp-content/uploads/2019/02/Podcast-logo-e1549927316890.jpg?zoom=2&resize=880%2C660",
    content: "Caerphilly chalk and cheese queso. Cheese on toast port-salut blue castello paneer danish fontina fromage melted cheese bocconcini. Parmesan fromage frais bocconcini cheesecake pecorino halloumi port-salut parmesan. Mascarpone cheddar dolcelatte melted cheese lancashire who moved my cheese melted cheese squirty cheese. When the cheese comes out everybody's happy cheesecake.", 
    user_id: 1);
post2 = Post.create(title: "Da Baby", img: "https://images.complex.com/complex/images/fl_lossy,pg_1/yae9bzxqqtr05isuebm7/dababy-smile-getty", 
    content: "Jonathan Lyndale Kirk, better known as DaBaby, is an American rapper and songwriter from Charlotte, North Carolina. He is best known for his single Suge, the lead single off his debut studio album, Baby on Baby. Suge became a commercial success and peaked at number seven on the Billboard Hot 100", 
    user_id: 1);
post3 = Post.create(title: "Baby Boi (Luka)", img: "https://cdn.vox-cdn.com/thumbor/MI4z-e_uEZyYIXG33va77LnAG-0=/0x0:3461x2306/1200x800/filters:focal(1096x413:1648x965)/cdn.vox-cdn.com/uploads/chorus_image/image/62834849/usa_today_11980119.0.jpg", 
    content: "Luka Dončić is a Slovenian professional basketball player for the Dallas Mavericks of the National Basketball Association and the Slovenian national team. Born in Ljubljana, Dončić shone as a youth player for Union Olimpija, before joining the youth academy of the Spanish club, Real Madrid", 
    user_id: 1);
post4 = Post.create(title: "Cupcakes", img: "https://www.biggerbolderbaking.com/wp-content/uploads/2017/09/1C5A0996.jpg", 
    content: "These are cupcakes ^^^^", 
    user_id: 1);
post5 = Post.create(title: "Robert Franks", img: "https://cdn.vox-cdn.com/thumbor/ACF4VAe-yM_FBShboDq1-ZylzQc=/0x263:2137x2596/1200x800/filters:focal(846x613:1186x953)/cdn.vox-cdn.com/uploads/chorus_image/image/59169683/usa_today_10702254.0.jpg", 
    content: "Robert Christopher Franks Jr. is an American professional basketball player for the Charlotte Hornets of the National Basketball Association, on a two-way contract with the Greensboro Swarm of the NBA G League. He played college basketball for the Washington State Cougars", 
    user_id: 1);
post6 = Post.create(title: "Walken all over you", img: "https://www.thevintagenews.com/wp-content/uploads/2018/01/pc74fb9v.jpg", 
    content: "THE Christopher Walken", 
    user_id: 1);

like1 = Like.create(user_id: 2, post_id: 1);
like2 = Like.create(user_id: 2, post_id: 2);
like3 = Like.create(user_id: 2, post_id: 3);
like4 = Like.create(user_id: 2, post_id: 4);
like5 = Like.create(user_id: 1, post_id: 5);
like6 = Like.create(user_id: 2, post_id: 5);

comment = Comment.create(user_id: 1, post_id: 1, comment_body: "this is a comment, like a really long comment. this blog kinda sucks anyway so I can write anything, haha commenting is cool i guess blah blah");
comment2 = Comment.create(user_id: 1, post_id: 1, comment_body: "another comment blah blah blah.... please read me this is really important");

tag = Tag.create(name: "mma")

post_tag = PostTag.create(post_id: 1, tag_id: 1)