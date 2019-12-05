user1 = User.create(username: "admin", password: "hello", email: "email@com.com", isAdmin: true, bio: "Human give me attention meow it's 3am, time to create some chaos pelt around the house and up and down stairs chasing phantoms find box a little too small and curl up with fur.")
    user1.avatar.attach(io: File.open('/Users/flatironschool/Documents/avatar2.jpeg'), filename: 'icon.pdf')
user2 = User.create(username: "user", password: "hello", email: "email@com.com", isAdmin: false, bio: "Fried cheese… with club sauce. Popcorn shrimp… with club sauce. Chicken fingers… with spicy club sauce. Gosh Mom… after all these years, God's not going to take a call from you.")
    user2.avatar.attach(io: File.open('/Users/flatironschool/Documents/avatar.jpeg'), filename: 'icon.pdf')

post1 = Post.create(title: "Brian Ortega Out Of Upcoming Fight", 
    content: "The UFC's final main event of the decade has taken a hit.

Brian Ortega, who was scheduled to fight Chan Sung Jung on Dec. 21 in Busan, South Korea, has withdrawn from the featherweight headliner because of a torn ACL, he announced via Twitter.
        
Frankie Edgar has verbally agreed to replace Ortega, sources say. The fight would be contested at 145 pounds. Edgar is scheduled to make his bantamweight debut against Cory Sandhagen on Jan. 25 in Raleigh, North Carolina, and both the UFC and Edgar are hopeful that fight can remain intact, barring any injuries.
        
In the meantime, the promotion is working on contingency plans for Sandhagen, according to sources.

Sources said the UFC has been working to keep Jung, nicknamed 'The Korean Zombie', on the Busan card, considering his popularity in his home country of South Korea.
        
Ortega (14-1-1) hasn't fought since last December, when he lost a featherweight title fight to Max Holloway. Over the past year, he has dealt with multiple hand, nose and foot injuries, which have kept him sidelined.

Jung (15-5) is coming off a 58-second TKO victory over Renato Moicano in June. Jung hasn't fought in South Korea since 2008, three years prior to joining the UFC.", 
    user_id: 1);
    post1.header_img.attach(io: File.open('/Users/flatironschool/Documents/brian-ortega.jpg'), filename: 'randy.jpeg')

post2 = Post.create(title: "Conor Returns to the Octogon for UFC 246", 
    content: "Conor McGregor will return to the UFC Octagon on Jan. 18 in Las Vegas, according to UFC president Dana White.

The UFC is close to finalizing a non-title welterweight bout between McGregor and Donald 'Cowboy' Cerrone, which will headline UFC 246 at T-Mobile Arena. McGregor has signed his contract to compete on the date, White told ESPN.
        
Cerrone's representatives say he has agreed to the bout and signed a new, exclusive deal with the UFC.
        
'Conor has signed, and Cowboy is ready to go', White told ESPN.
        
The bout will mark McGregor's third appearance at 170 pounds in the UFC. He fought Nate Diaz at welterweight twice in 2016, losing via submission and then evening the series with a majority decision. McGregor's representatives did not immediately respond to a request for comment.

McGregor (21-4) has not fought since he was submitted in the fourth round of a lightweight title fight against Khabib Nurmagomedov at UFC 229 in October 2018. The Dublin native hasn't won in the UFC since he knocked out Eddie Alvarez in November 2016 to win his second title.", 
    user_id: 1);
    post2.header_img.attach(io: File.open('/Users/flatironschool/Documents/condon.jpg'), filename: 'condon.jpeg')

post3 = Post.create(title: "Ferguson To Face Off With Khabib April 18",
    content: "It's official. UFC lightweight champion Khabib Nurmagomedov and Tony Ferguson will meet in the main event of a UFC pay-per-view event on April 18.

Ferguson and his representatives from Ballengee Group met with UFC executives on Friday in Las Vegas, where he formally agreed to the 155-pound title fight. Nurmagomedov signed his contract for the bout earlier this week. The event will take place at Barclays Center in Brooklyn, New York.
        
UFC president Dana White told ESPN earlier this week the promotion was targeting the matchup for its April date in New York. Ferguson wanted the fight but needed Friday's meeting before officially locking it in. Both White and Ferguson's management confirmed the bout.
        
This is the fifth time the UFC has booked a meeting between Nurmagomedov (28-0) and Ferguson (25-3), dating back to 2015. Each of the previous four bookings fell apart for various reasons. Nurmagomedov pulled out in 2015 and 2017 due to injury and weight issues. Ferguson withdrew in 2016 and 2018 due to injuries.
        
Nurmagomedov, of Dagestan, is 12-0 in the UFC. Ferguson, a former interim titleholder, has won 12 in a row. ESPN.com ranks Nurmagomedov and Ferguson the Nos. 1 and 6 pound-for-pound fighters in the world, respectively.", 
    user_id: 1);
    post3.header_img.attach(io: File.open('/Users/flatironschool/Documents/tony-khabib.jpg'), filename: 'icon.pdf')

post4 = Post.create(title: "Andy Ruiz Seems Confident In Rematch With Joshua", 
    content: "After Andy Ruiz Jr. scored a monumental upset by knocking out Anthony Joshua to take his three heavyweight world title belts on June 1 at sold-out Madison Square Garden in New York, he came to the post-fight news conference wearing a New York Knicks jersey.

It was a night that Ruiz, who was a late substitute in the fight, will never forget, as he survived a third-round knockdown and went on to drop Joshua four times en route to the seventh-round stoppage win and one of the biggest upsets in heavyweight history.
        
Ruiz, hoping to replicate his victory in the rematch, came to Wednesday's final pre-fight news conference again wearing a Knicks jersey, clearly as a reminder of his finest hour.

I don't want to let these beautiful belts go away, said Ruiz, who again is the underdog. I've been doing this since I was 6 years old and it's finally paying off. There's no way I'm gonna let these belts go. I'm going to die trying, and to do anything that's possible to get that victory.

It's been a long journey, a long roller coaster in my life. And now that I finally made my dreams come true, there's just no way I'm gonna let these go. May the best man win. I'm just ready.
        
Ruiz and Joshua, their trainers and Matchroom Boxing promoter Eddie Hearn appeared at the news conference in Riyadh, Saudi Arabia. The rematch will take place Saturday (DAZN, Noon ET, with the main event at approximately 3:45 p.m. ET) on the outskirts of the city at a recently completed, temporary 15,000-seat open-air stadium in Diriyah.
        
Robert McCracken, Joshua's trainer, said his fighter is better prepared for the rematch than the first fight, when he may have been distracted by making his heavily hyped United States debut and possibly overlooked a lightly regarded challenger.", 
    user_id: 1);
    post4.header_img.attach(io: File.open('/Users/flatironschool/Documents/ruiz-joshua.jpg'), filename: 'icon.pdf')

post5 = Post.create(title: "Is Tyson Fury Coming to the UFC?", 
    content: "Tyson Fury has said he has received an offer from former two-weight UFC titleholder Conor McGregor to train the lineal boxing heavyweight champion in mixed martial arts.

Fury recently said he would be open to competing in MMA, and trained with Liverpudlian UFC fighter Darren Till this week.
        
I've been training with Darren Till and I've got an offer from Conor McGregor to be trained by him, so [an MMA bout] will be something that I'm very interested in, Fury said.
        
I've also had messages from the UFC heavyweight champion, Stipe [Miocic], and he wants to fight me in a boxing ring apparently. So maybe after I beat Deontay Wilder, then I'll fight Stipe.
        
Fury -- who last boxed in September, defeating Otto Wallin via unanimous decision before appearing in a WWE bout in Saudi Arabia -- is set for a rematch against WBC heavyweight champion Wilder in 2020. That depends on Wilder beating 40-year-old Luis Ortiz once again when the pair meet in their own rematch in Las Vegas on Nov. 23.", 
    user_id: 1);
    post5.header_img.attach(io: File.open('/Users/flatironschool/Documents/tyson.jpeg'), filename: 'icon.pdf')

post6 = Post.create(title: "Holm-Pennington Is Back On", 
    content: "A bout between two UFC women's bantamweight contenders is back on the table.

Holly Holm versus Raquel Pennington has been rescheduled for UFC 246 on Jan. 18 in Las Vegas, sources confirmed Tuesday.
    
Holm and Pennington were initially booked for UFC 243 in October, but Holm withdrew because of an injury.
        
MMA Junkie was the first to report the rescheduled fight.

The bout is a rematch of Holm's UFC debut, when she beat Pennington by split decision at UFC 184 on Feb. 28, 2015. Coming into this fight, Holm is ranked No. 6 by ESPN and Pennington is No. 7 among MMA women's bantamweight fighters.

Holm (12-5) is a former UFC bantamweight champion with the distinction of being the first woman to beat Ronda Rousey in MMA. Holm knocked out Rousey with a head kick in the second round of their title fight at UFC 193 on Nov. 15, 2015.
        
Pennington (10-7), also a former title challenger against Nunes, most recently defeated Irene Aldana via split decision at UFC San Antonio in July. The Colorado native snapped a two-fight losing streak with the victory. Pennington, 31, has won five of her last seven fights overall.", 
    user_id: 1);
    post6.header_img.attach(io: File.open('/Users/flatironschool/Documents/holm-pennington.jpg'), filename: 'icon.pdf')

like1 = Like.create(user_id: 2, post_id: 2);
like2 = Like.create(user_id: 1, post_id: 2);
like3 = Like.create(user_id: 2, post_id: 3);
like4 = Like.create(user_id: 1, post_id: 3);
like5 = Like.create(user_id: 2, post_id: 4);
like6 = Like.create(user_id: 2, post_id: 5);
like7 = Like.create(user_id: 2, post_id: 6);

comment = Comment.create(user_id: 2, post_id: 2, comment_body: "I can't wait for this, I've been waiting so long to watch McGragor get back in the octagon!");
comment2 = Comment.create(user_id: 1, post_id: 2, comment_body: "It's going to be a great matchup");

tag1 = Tag.create(name: "ufc")
tag2 = Tag.create(name: "mma")
tag3 = Tag.create(name: "bjj")
tag4 = Tag.create(name: "boxing")
tag5 = Tag.create(name: "kickboxing")
tag6 = Tag.create(name: "gambling")
tag7 = Tag.create(name: "entertainment")
tag8 = Tag.create(name: "misc")

post_tag1 = PostTag.create(post_id: 1, tag_id: 1)
post_tag2 = PostTag.create(post_id: 1, tag_id: 2)
post_tag3 = PostTag.create(post_id: 2, tag_id: 1)
post_tag4 = PostTag.create(post_id: 2, tag_id: 7)
post_tag5 = PostTag.create(post_id: 3, tag_id: 1)
post_tag6 = PostTag.create(post_id: 3, tag_id: 2)
post_tag7 = PostTag.create(post_id: 4, tag_id: 4)
post_tag8 = PostTag.create(post_id: 4, tag_id: 6)
post_tag9 = PostTag.create(post_id: 5, tag_id: 1)
post_tag10 = PostTag.create(post_id: 5, tag_id: 4)
post_tag11 = PostTag.create(post_id: 5, tag_id: 7)
post_tag12 = PostTag.create(post_id: 5, tag_id: 8)