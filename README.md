# shadowsapp-rails 

Backend for shadowsapp.

Because REASONS.

This application allows you to perform RESTful actions on a series of `/shadows` resources

Featuring:

- Token based authentication with [https://github.com/lynndylanhurley/devise_token_auth](devise_token_auth)
- Relational database-backed models (postgres is reccomended but you may use any RDBMS you want --migrations are included)
- A resourceful json-based API to get `shadow`s by GETting `/shadows` or POSTing `/shadows`

NOTE: as detailed in the devise_token_auth docs, each successive request after authenticating will need you to include the authentication token in the headers, together with the user's uid and client token. If you don't do this, you'll be blocked out from consuming the app's resources.

Developed in a night of insomnia.

Alfredo Gallegos, 2016
