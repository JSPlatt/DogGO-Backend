User.destroy_all
Post.destroy_all
Follow.destroy_all
# User.reset_pk_sequence!
# Post.reset_pk_sequence!
# Follow.reset_pk_sequence!

jeff = User.create!(
    name: "Jeff",
    username: "jeff",
    email: "jeff@gmail.com",
    profileimage: "https://vetstreet.brightspotcdn.com/dims4/default/056f631/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fca%2Fd4%2Fef042ab949e1b141663db3836971%2Flabradors-AP-0SA6F7-645sm8513.jpg"
)

amit = User.create!(
    name: "Amit",
    username: "amit",
    email: "amit@gmail.com",
    profileimage: "https://www.harlingenveterinaryclinic.com/sites/default/files/styles/large/public/golden-retriever-dog-breed-info.jpg?itok=cdghqKxv"
)

dan = User.create!(
    name: "Dan",
    username: "dan",
    email: "dan@gmail.com",
    profileimage:"https://i1.sndcdn.com/artworks-000215207650-a9ejfn-t500x500.jpg"
)

christine = User.create!(
    name: "Christine",
    username: "christine",
    email: "chris@gmail.com",
    profileimage: "https://www.rd.com/wp-content/uploads/2021/01/GettyImages-1257560163-scaled-e1610062322469.jpg"
)

sarah = User.create!(
    name: "Sarah",
    username: "sarah",
    email: "sarah@gmail.com",
    profileimage: "https://thehappypuppysite.com/wp-content/uploads/2018/01/Toy-Poodle-HP-long.jpg"
)

post1 = Post.create!(
    user_id: jeff.id,
    title: "Crazy Day",
    message: "This has been a super busy day...",
    username: "jeff",
    profilesrc: "https://vetstreet.brightspotcdn.com/dims4/default/056f631/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fca%2Fd4%2Fef042ab949e1b141663db3836971%2Flabradors-AP-0SA6F7-645sm8513.jpg",
    image: "https://i2-prod.mirror.co.uk/incoming/article12075399.ece/ALTERNATES/s615/PAY-SHAME-FACED-LURCHER-MAULS-THIRD-SOFA-IN-TWO-YEAR-CHEWING-CAMPAIGN-COSTING-OWNER-THOUSANDS.jpg"
)

post2 = Post.create!(
    user_id: amit.id,
    title: "Ugh",
    message: "Anyone else just having one of those days?",
    username: "amit",
    profilesrc: "https://www.harlingenveterinaryclinic.com/sites/default/files/styles/large/public/golden-retriever-dog-breed-info.jpg?itok=cdghqKxv",
    image:""
)

post3 = Post.create!(
    user_id: sarah.id,
    title: "Is this edible?",
    message: "Does anyone know....?",
    username: "sarah",
    profilesrc: "https://thehappypuppysite.com/wp-content/uploads/2018/01/Toy-Poodle-HP-long.jpg",
    image: "https://barkhappy.com/wp-content/uploads/2017/02/dog-toy-eat-guilty.jpg"
)

post4 = Post.create!(
    user_id: dan.id,
    title: "New Me....",
    message: "Maybe not THAT new",
    username: "dan",
    profilesrc: "https://i1.sndcdn.com/artworks-000215207650-a9ejfn-t500x500.jpg",
    image:"https://images.wagwalkingweb.com/media/daily_wag/sense_guides/history/1541675703.89/can-dogs-drink-beer_history.jpg"
)

follow1 = Follow.create!(
    follower_id:2,
    followee_id:1
)

follow1 = Follow.create!(
    follower_id:3,
    followee_id:1
)

follow1 = Follow.create!(
    follower_id:4,
    followee_id:1
)

follow1 = Follow.create!(
    follower_id:5,
    followee_id:1
)

follow1 = Follow.create!(
    follower_id:1,
    followee_id:2
)

follow1 = Follow.create!(
    follower_id:1,
    followee_id:3
)

follow1 = Follow.create!(
    follower_id:1,
    followee_id:4
)

follow1 = Follow.create!(
    follower_id:1,
    followee_id:5
)

follow1 = Follow.create!(
    follower_id:2,
    followee_id:3
)




puts "Seeded sucka"
