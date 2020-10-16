# get '/' do
#   File.read(File.join('app/views', 'index.html'))
# end


def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes/60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do
    @finstagram_post_moon = {
        username: "Moon_Moon",
        avatar_url: "https://i.pinimg.com/originals/75/d2/47/75d24724e13f083bce2c77541606f15b.png",
        photo_url: "https://i.pinimg.com/originals/38/a7/50/38a750aa65fd48b39f31695ab416e20e.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 4,
        comment_count: 2,
        comments: [{
            username: "Moon_Moon",
            text: "Moon_Moon: Moon Moon can't resize photos...silly Moon Moon!"
         },
        {
            username: "MajesticAF_wolf",
            text: "This is why we can't have nice things."
        }]
    }

    @finstagram_post_pack = {
        username: "wolf_pack_1",
        avatar_url: "https://cdn.hswstatic.com/gif/pack-mentality-1.jpg",
        photo_url: "https://i.pinimg.com/564x/b4/27/aa/b427aa32ef60dd2676dca34f06d3dbef.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 2,
        comment_count: 3,
        comments: [{
            username: "wolf_pack_1",
            text: "#familyphotoswithMoonMoon"
        },
        {
            username: "Moon_Moon",
            text: "#beautifulselfies"
        },
        {
            username: "MajesticAF_wolf",
            text: "Zoom is fine, don't drag the pack into your madness."
        }]
    }

    @finstagram_post_majestic = {
        username: "MajesticAF_wolf",
        avatar_url: "https://external-preview.redd.it/JlvjfDbBt8I5rrR-RscthLmkINwfi4NcZJVrb6g2ywI.jpg?auto=webp&s=571bb793cf63fd8698f758c2bd8f623b83d7e1e6",
        photo_url: "https://i.pinimg.com/236x/f3/d5/65/f3d56517e65cec79a414755962ff1601.jpg",   
        humanized_time_ago: humanized_time_ago(190),
        like_count: 10,
        comment_count: 2,
        comments: [{
            username: "MajesticAF_wolf",
            text: "Moon Moon has nothing on me!"
        },
        {
            username: "Moon_Moon",
            text: "Mom says I'm beautiful."
        }]
    }
    @finstagram_posts = [@finstagram_post_moon, @finstagram_post_pack, @finstagram_post_majestic]
erb(:index)
end


