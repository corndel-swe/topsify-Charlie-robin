drop table if exists playlists_tracks;
drop table if exists playlists;

create TABLE playlists(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    name TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON delete CASCADE
);

create TABLE playlist_tracks(
    playlist_id INTEGER,
    track_id TEXT,
    FOREIGN KEY (playlist_id) REFERENCES playlists(id) ON delete CASCADE,
    FOREIGN KEY (track_id) REFERENCES tracks(id) ON delete CASCADE
);

