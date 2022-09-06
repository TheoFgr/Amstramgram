Chatroom.destroy_all
User.destroy_all

User.create(email: "seb@test.fr", nickname: "Sebastien", password: "123456")
User.create(email: "boris@test.fr", nickname: "Boris", password: "123456")
User.create(email: "ff@ff", nickname: "ff", password: "azerty")

Chatroom.create(name: "General")
