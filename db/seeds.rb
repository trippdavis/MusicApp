Band.create(name: "Kanye West")
Band.create(name: "Jai Paul")
Band.create(name: "Elvis")
Band.create(name: "Whatever Else")

Album.create(title: "Graduation", band_id: 1, recording_type: "Studio")
Album.create(title: "Late Registration", band_id: 1, recording_type: "Studio")
Album.create(title: "Something", band_id: 2, recording_type: "Live")
Album.create(title: "Elvis", band_id: 3, recording_type: "Studio")
Album.create(title: "Houndog", band_id: 3, recording_type: "Live")

Track.create(title: "KWS1", album_id: 1, track_type: "Regular",
  lyrics: "Something, something, something.")
Track.create(title: "KWS2", album_id: 1, track_type: "Regular",
  lyrics: "Something, something, something else.")
Track.create(title: "KWS3", album_id: 1, track_type: "Regular",
  lyrics: "All falls down.")
Track.create(title: "KWS4", album_id: 1, track_type: "Bonus",
  lyrics: "This is a bonus.")
Track.create(title: "KWS5", album_id: 2, track_type: "Regular",
  lyrics: "Jesus Walks!")
Track.create(title: "KWS6", album_id: 2, track_type: "Regular",
  lyrics: "Drive slow, homie!")
Track.create(title: "Elvis", album_id: 3, track_type: "Regular",
  lyrics: "1960.")
Track.create(title: "Bam", album_id: 4, track_type: "Bonus",
  lyrics: "What we want!")

User.create(email: "tripp", password: "davis")
User.create(email: "davis", password: "tripp")
User.create(email: "kenneth", password: "davis")

Note.create(user_id: 1, track_id: 1, body: "Note1")
Note.create(user_id: 2, track_id: 1, body: "Note2")
Note.create(user_id: 1, track_id: 1, body: "Note3")
Note.create(user_id: 1, track_id: 2, body: "Note4")
Note.create(user_id: 2, track_id: 2, body: "Note5")
Note.create(user_id: 3, track_id: 1, body: "Note6")
Note.create(user_id: 1, track_id: 1,
  body: "This is a really long note cause I want to see what the text looks
  like and see what I need to do to wrap the text and I will figure it out
  and make it look nice and be presentable ds;lkajdl;jas;fdl;asjldkjasl;kj
  asdl;asjldjsl;ajdl;kasjdllaksjdl;jasjdl;kasjdl;kjasl;kj")
