p "commence"

Publication.destroy_all

p "destroy publish"


p "creating publish ..."
publication1 = Publication.create(content: "salut c'est moi", number_of_like: 3, picture: "https://f.hellowork.com/blogdumoderateur/2013/02/nyan-cat-gif-1.gif")

p "publish created"

p "finish"
