

# Group Todo_API


## Users [/auth/login]


### Post auth/login [POST /auth/login]


+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "florrie@macgyver.co",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTU3NjEwNTF9.iJ28Xypo8QkmrnoDh4HuAzMUEbOmJRVXUX17fomvwD4"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "gay@mueller.biz",
              "password": "405pA2Y312S4"
            }

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Invalid credentials"
            }

### Post signup [POST /signup]


+ Request creates a new user
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Joni Gulgowski",
              "email": "christenajohnston@kozey.io",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTU1NzYxMDUyfQ._d_iJHWxQiSSka3FubMzMBHhfHv-j5tZGl7V2MfQxxo"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Candace Gusikowski",
              "email": "hueyjaskolski@cruickshankjenkins.co",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU1NzYxMDUyfQ.nsg60tHXphCSD9YvMg4I-wp3V1qS4o3FQ2g5GvLkixM"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Val Torphy",
              "email": "ezekielhickle@dach.org",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU1NzYxMDUyfQ.ivnmC3PtywMRc6i5KtkqP7YFGgUw_XFz2gkVsxARz3g"
            }

+ Request does not create a new user
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Invalid credentials"
            }

## Comments [/todos/:todo_id/items/:item_id/comments/:id]


### Get /todos/:todo_id/items/:item_id/comments [GET /todos/{todo_id}/items/{item_id}/comments]

+ Parameters
    + todo_id: `1` (number, required)
    + item_id: `1` (number, required)

+ Request when success
**GET**&nbsp;&nbsp;`/todos/1/items/1/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 1,
                "body": "Obi-Wan Kenobitest",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-04-19T11:50:51.629Z",
                "updated_at": "2019-04-19T11:50:51.629Z",
                "item": {
                  "id": 1,
                  "name": "Maz Kanata",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-04-26T11:50:51.618Z",
                  "created_at": "2019-04-19T11:50:51.620Z",
                  "updated_at": "2019-04-19T11:50:51.620Z"
                }
              }
            ]

### Get /todos/:todo_id/items/:item_id/comments/:id [GET /todos/{todo_id}/items/{item_id}/comments/{id}]

+ Parameters
    + todo_id: `2` (number, required)
    + item_id: `2` (number, required)
    + id: `2` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/2/items/2/comments/2`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "body": "Sebulbatest",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-04-19T11:50:51.666Z",
              "updated_at": "2019-04-19T11:50:51.666Z",
              "item": {
                "id": 2,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-04-26T11:50:51.663Z",
                "created_at": "2019-04-19T11:50:51.665Z",
                "updated_at": "2019-04-19T11:50:51.665Z"
              }
            }

### Post /todos/:todo_id/items/:item_id/comments [POST /todos/{todo_id}/items/{item_id}/comments]

+ Parameters
    + todo_id: `3` (number, required)
    + item_id: `3` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos/3/items/3/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "body": "Visit Narnia"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "name": "Jyn Erso",
              "done": false,
              "todo_id": 3,
              "deadline": "2019-04-26T11:50:51.681Z",
              "created_at": "2019-04-19T11:50:51.682Z",
              "updated_at": "2019-04-19T11:50:51.682Z",
              "todo": {
                "id": 3,
                "title": "suscipit",
                "user_id": 5,
                "created_at": "2019-04-19T11:50:51.680Z",
                "updated_at": "2019-04-19T11:50:51.680Z"
              }
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos/4/items/4/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 4,
              "name": "Count Dooku",
              "done": false,
              "todo_id": 4,
              "deadline": "2019-04-26T11:50:51.702Z",
              "created_at": "2019-04-19T11:50:51.703Z",
              "updated_at": "2019-04-19T11:50:51.703Z",
              "todo": {
                "id": 4,
                "title": "adipisci",
                "user_id": 6,
                "created_at": "2019-04-19T11:50:51.701Z",
                "updated_at": "2019-04-19T11:50:51.701Z"
              }
            }

### Put /todos/:todo_id/items/:item_id/comments/:id [PUT /todos/{todo_id}/items/{item_id}/comments/{id}]

+ Parameters
    + todo_id: `5` (number, required)
    + item_id: `5` (number, required)
    + id: `6` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/todos/5/items/5/comments/6`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "body": "Mozart"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 6,
              "body": "Mozart",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 5,
              "created_at": "2019-04-19T11:50:51.723Z",
              "updated_at": "2019-04-19T11:50:51.729Z",
              "item": {
                "id": 5,
                "name": "General Hux",
                "done": false,
                "todo_id": 5,
                "deadline": "2019-04-26T11:50:51.721Z",
                "created_at": "2019-04-19T11:50:51.722Z",
                "updated_at": "2019-04-19T11:50:51.722Z"
              }
            }

+ Request updates the item
**PUT**&nbsp;&nbsp;`/todos/6/items/6/comments/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "body": "Mozart"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 7,
              "body": "Mozart",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 6,
              "created_at": "2019-04-19T11:50:51.742Z",
              "updated_at": "2019-04-19T11:50:51.748Z",
              "item": {
                "id": 6,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 6,
                "deadline": "2019-04-26T11:50:51.739Z",
                "created_at": "2019-04-19T11:50:51.740Z",
                "updated_at": "2019-04-19T11:50:51.740Z"
              }
            }

### Delete /todos/:todo_id/items/:item_id/comments/:id [DELETE /todos/{todo_id}/items/{item_id}/comments/{id}]

+ Parameters
    + todo_id: `7` (number, required)
    + item_id: `7` (number, required)
    + id: `8` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/7/items/7/comments/8`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204

## Items [/todos/:todo_id/items/:id]


### Get todos/:todo_id/items [GET /todos/{todo_id}/items]

+ Parameters
    + todo_id: `8` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/8/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 8,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.775Z",
                "created_at": "2019-04-19T11:50:51.776Z",
                "updated_at": "2019-04-19T11:50:51.776Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 9,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.777Z",
                "created_at": "2019-04-19T11:50:51.778Z",
                "updated_at": "2019-04-19T11:50:51.778Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 10,
                "name": "Finn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.779Z",
                "created_at": "2019-04-19T11:50:51.780Z",
                "updated_at": "2019-04-19T11:50:51.780Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 11,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.781Z",
                "created_at": "2019-04-19T11:50:51.782Z",
                "updated_at": "2019-04-19T11:50:51.782Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 12,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.783Z",
                "created_at": "2019-04-19T11:50:51.783Z",
                "updated_at": "2019-04-19T11:50:51.783Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 13,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.784Z",
                "created_at": "2019-04-19T11:50:51.785Z",
                "updated_at": "2019-04-19T11:50:51.785Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 14,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.786Z",
                "created_at": "2019-04-19T11:50:51.787Z",
                "updated_at": "2019-04-19T11:50:51.787Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 15,
                "name": "Finn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.788Z",
                "created_at": "2019-04-19T11:50:51.789Z",
                "updated_at": "2019-04-19T11:50:51.789Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 16,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.790Z",
                "created_at": "2019-04-19T11:50:51.791Z",
                "updated_at": "2019-04-19T11:50:51.791Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 17,
                "name": "Darth Maul",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.792Z",
                "created_at": "2019-04-19T11:50:51.793Z",
                "updated_at": "2019-04-19T11:50:51.793Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 18,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.794Z",
                "created_at": "2019-04-19T11:50:51.794Z",
                "updated_at": "2019-04-19T11:50:51.794Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 19,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.795Z",
                "created_at": "2019-04-19T11:50:51.796Z",
                "updated_at": "2019-04-19T11:50:51.796Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 20,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.798Z",
                "created_at": "2019-04-19T11:50:51.799Z",
                "updated_at": "2019-04-19T11:50:51.799Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 21,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.800Z",
                "created_at": "2019-04-19T11:50:51.801Z",
                "updated_at": "2019-04-19T11:50:51.801Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 22,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.802Z",
                "created_at": "2019-04-19T11:50:51.803Z",
                "updated_at": "2019-04-19T11:50:51.803Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 23,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.803Z",
                "created_at": "2019-04-19T11:50:51.804Z",
                "updated_at": "2019-04-19T11:50:51.804Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 24,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.805Z",
                "created_at": "2019-04-19T11:50:51.806Z",
                "updated_at": "2019-04-19T11:50:51.806Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 25,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.807Z",
                "created_at": "2019-04-19T11:50:51.807Z",
                "updated_at": "2019-04-19T11:50:51.807Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 26,
                "name": "Jyn Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.808Z",
                "created_at": "2019-04-19T11:50:51.809Z",
                "updated_at": "2019-04-19T11:50:51.809Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              },
              {
                "id": 27,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-26T11:50:51.810Z",
                "created_at": "2019-04-19T11:50:51.811Z",
                "updated_at": "2019-04-19T11:50:51.811Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-04-19T11:50:51.774Z",
                  "updated_at": "2019-04-19T11:50:51.774Z"
                }
              }
            ]

+ Request returns all todo items
**GET**&nbsp;&nbsp;`/todos/9/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 28,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.842Z",
                "created_at": "2019-04-19T11:50:51.843Z",
                "updated_at": "2019-04-19T11:50:51.843Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 29,
                "name": "Borvo the Hutt",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.844Z",
                "created_at": "2019-04-19T11:50:51.845Z",
                "updated_at": "2019-04-19T11:50:51.845Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 30,
                "name": "Jyn Erso",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.846Z",
                "created_at": "2019-04-19T11:50:51.847Z",
                "updated_at": "2019-04-19T11:50:51.847Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 31,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.848Z",
                "created_at": "2019-04-19T11:50:51.849Z",
                "updated_at": "2019-04-19T11:50:51.849Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 32,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.850Z",
                "created_at": "2019-04-19T11:50:51.851Z",
                "updated_at": "2019-04-19T11:50:51.851Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 33,
                "name": "Han Solo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.852Z",
                "created_at": "2019-04-19T11:50:51.853Z",
                "updated_at": "2019-04-19T11:50:51.853Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 34,
                "name": "Sheev Palpatine",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.854Z",
                "created_at": "2019-04-19T11:50:51.855Z",
                "updated_at": "2019-04-19T11:50:51.855Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 35,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.856Z",
                "created_at": "2019-04-19T11:50:51.856Z",
                "updated_at": "2019-04-19T11:50:51.856Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 36,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.857Z",
                "created_at": "2019-04-19T11:50:51.858Z",
                "updated_at": "2019-04-19T11:50:51.858Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 37,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.859Z",
                "created_at": "2019-04-19T11:50:51.860Z",
                "updated_at": "2019-04-19T11:50:51.860Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 38,
                "name": "Han Solo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.861Z",
                "created_at": "2019-04-19T11:50:51.862Z",
                "updated_at": "2019-04-19T11:50:51.862Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 39,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.863Z",
                "created_at": "2019-04-19T11:50:51.864Z",
                "updated_at": "2019-04-19T11:50:51.864Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 40,
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.865Z",
                "created_at": "2019-04-19T11:50:51.866Z",
                "updated_at": "2019-04-19T11:50:51.866Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 41,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.867Z",
                "created_at": "2019-04-19T11:50:51.868Z",
                "updated_at": "2019-04-19T11:50:51.868Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 42,
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.869Z",
                "created_at": "2019-04-19T11:50:51.870Z",
                "updated_at": "2019-04-19T11:50:51.870Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 43,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.871Z",
                "created_at": "2019-04-19T11:50:51.872Z",
                "updated_at": "2019-04-19T11:50:51.872Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 44,
                "name": "Darth Maul",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.873Z",
                "created_at": "2019-04-19T11:50:51.874Z",
                "updated_at": "2019-04-19T11:50:51.874Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 45,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.875Z",
                "created_at": "2019-04-19T11:50:51.876Z",
                "updated_at": "2019-04-19T11:50:51.876Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 46,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.877Z",
                "created_at": "2019-04-19T11:50:51.878Z",
                "updated_at": "2019-04-19T11:50:51.878Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              },
              {
                "id": 47,
                "name": "Wedge Antilles",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-26T11:50:51.879Z",
                "created_at": "2019-04-19T11:50:51.880Z",
                "updated_at": "2019-04-19T11:50:51.880Z",
                "todo": {
                  "id": 9,
                  "title": "quisquam",
                  "user_id": 11,
                  "created_at": "2019-04-19T11:50:51.841Z",
                  "updated_at": "2019-04-19T11:50:51.841Z"
                }
              }
            ]

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/todos/0/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Todo with 'id'=0"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/todos/0/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Todo with 'id'=0"
            }

### Get todos/:todo_id/items/:id [GET /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `12` (number, required)
    + id: `88` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/12/items/88`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 88,
              "name": "Admiral Ackbar",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-04-26T11:50:52.004Z",
              "created_at": "2019-04-19T11:50:52.005Z",
              "updated_at": "2019-04-19T11:50:52.005Z",
              "todo": {
                "id": 12,
                "title": "rerum",
                "user_id": 14,
                "created_at": "2019-04-19T11:50:52.003Z",
                "updated_at": "2019-04-19T11:50:52.003Z"
              }
            }

+ Request returns the item
**GET**&nbsp;&nbsp;`/todos/13/items/108`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 108,
              "name": "Asajj Ventress",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-04-26T11:50:52.054Z",
              "created_at": "2019-04-19T11:50:52.055Z",
              "updated_at": "2019-04-19T11:50:52.055Z",
              "todo": {
                "id": 13,
                "title": "impedit",
                "user_id": 15,
                "created_at": "2019-04-19T11:50:52.053Z",
                "updated_at": "2019-04-19T11:50:52.053Z"
              }
            }

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/todos/14/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/todos/15/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
            }

### Post todos/:todo_id/items [POST /todos/{todo_id}/items]

+ Parameters
    + todo_id: `16` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos/16/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Visit Narnia",
              "done": false
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 16,
              "title": "quas",
              "user_id": 18,
              "created_at": "2019-04-19T11:50:52.216Z",
              "updated_at": "2019-04-19T11:50:52.216Z",
              "items": [
                {
                  "id": 168,
                  "name": "Ben Solo",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.217Z",
                  "created_at": "2019-04-19T11:50:52.218Z",
                  "updated_at": "2019-04-19T11:50:52.218Z"
                },
                {
                  "id": 169,
                  "name": "Shmi Skywalker",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.219Z",
                  "created_at": "2019-04-19T11:50:52.220Z",
                  "updated_at": "2019-04-19T11:50:52.220Z"
                },
                {
                  "id": 170,
                  "name": "Chirrut Imwe",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.221Z",
                  "created_at": "2019-04-19T11:50:52.222Z",
                  "updated_at": "2019-04-19T11:50:52.222Z"
                },
                {
                  "id": 171,
                  "name": "Qui-Gon Jinn",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.223Z",
                  "created_at": "2019-04-19T11:50:52.224Z",
                  "updated_at": "2019-04-19T11:50:52.224Z"
                },
                {
                  "id": 172,
                  "name": "Jyn Erso",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.225Z",
                  "created_at": "2019-04-19T11:50:52.226Z",
                  "updated_at": "2019-04-19T11:50:52.226Z"
                },
                {
                  "id": 173,
                  "name": "Ben Solo",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.227Z",
                  "created_at": "2019-04-19T11:50:52.227Z",
                  "updated_at": "2019-04-19T11:50:52.227Z"
                },
                {
                  "id": 174,
                  "name": "Count Dooku",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.228Z",
                  "created_at": "2019-04-19T11:50:52.229Z",
                  "updated_at": "2019-04-19T11:50:52.229Z"
                },
                {
                  "id": 175,
                  "name": "Asajj Ventress",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.230Z",
                  "created_at": "2019-04-19T11:50:52.231Z",
                  "updated_at": "2019-04-19T11:50:52.231Z"
                },
                {
                  "id": 176,
                  "name": "Jango Fett",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.232Z",
                  "created_at": "2019-04-19T11:50:52.233Z",
                  "updated_at": "2019-04-19T11:50:52.233Z"
                },
                {
                  "id": 177,
                  "name": "Admiral Ackbar",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.234Z",
                  "created_at": "2019-04-19T11:50:52.235Z",
                  "updated_at": "2019-04-19T11:50:52.235Z"
                },
                {
                  "id": 178,
                  "name": "Count Dooku",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.236Z",
                  "created_at": "2019-04-19T11:50:52.237Z",
                  "updated_at": "2019-04-19T11:50:52.237Z"
                },
                {
                  "id": 179,
                  "name": "Darth Caedus",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.238Z",
                  "created_at": "2019-04-19T11:50:52.239Z",
                  "updated_at": "2019-04-19T11:50:52.239Z"
                },
                {
                  "id": 180,
                  "name": "Chirrut Imwe",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.240Z",
                  "created_at": "2019-04-19T11:50:52.241Z",
                  "updated_at": "2019-04-19T11:50:52.241Z"
                },
                {
                  "id": 181,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.242Z",
                  "created_at": "2019-04-19T11:50:52.247Z",
                  "updated_at": "2019-04-19T11:50:52.247Z"
                },
                {
                  "id": 182,
                  "name": "Sheev Palpatine",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.248Z",
                  "created_at": "2019-04-19T11:50:52.250Z",
                  "updated_at": "2019-04-19T11:50:52.250Z"
                },
                {
                  "id": 183,
                  "name": "Grand Moff Tarkin",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.251Z",
                  "created_at": "2019-04-19T11:50:52.253Z",
                  "updated_at": "2019-04-19T11:50:52.253Z"
                },
                {
                  "id": 184,
                  "name": "Darth Maul",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.254Z",
                  "created_at": "2019-04-19T11:50:52.255Z",
                  "updated_at": "2019-04-19T11:50:52.255Z"
                },
                {
                  "id": 185,
                  "name": "Admiral Ackbar",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.257Z",
                  "created_at": "2019-04-19T11:50:52.258Z",
                  "updated_at": "2019-04-19T11:50:52.258Z"
                },
                {
                  "id": 186,
                  "name": "Watto",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.259Z",
                  "created_at": "2019-04-19T11:50:52.260Z",
                  "updated_at": "2019-04-19T11:50:52.260Z"
                },
                {
                  "id": 187,
                  "name": "Finn",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-26T11:50:52.262Z",
                  "created_at": "2019-04-19T11:50:52.263Z",
                  "updated_at": "2019-04-19T11:50:52.263Z"
                },
                {
                  "id": 188,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 16,
                  "deadline": null,
                  "created_at": "2019-04-19T11:50:52.269Z",
                  "updated_at": "2019-04-19T11:50:52.269Z"
                }
              ],
              "user": {
                "id": 18,
                "name": "Kori Gibson",
                "email": "louisa@gradybahringer.org",
                "password_digest": "$2a$04$TmPn3PzeKOeULLrE9a9TC.Yz5i45p61EcvSgAfUHHQh7yBFjrI1NS",
                "created_at": "2019-04-19T11:50:52.214Z",
                "updated_at": "2019-04-19T11:50:52.214Z"
              }
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos/17/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 17,
              "title": "illo",
              "user_id": 19,
              "created_at": "2019-04-19T11:50:52.287Z",
              "updated_at": "2019-04-19T11:50:52.287Z",
              "items": [
                {
                  "id": 189,
                  "name": "Galen Erso",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.288Z",
                  "created_at": "2019-04-19T11:50:52.289Z",
                  "updated_at": "2019-04-19T11:50:52.289Z"
                },
                {
                  "id": 190,
                  "name": "Jyn Erso",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.290Z",
                  "created_at": "2019-04-19T11:50:52.291Z",
                  "updated_at": "2019-04-19T11:50:52.291Z"
                },
                {
                  "id": 191,
                  "name": "Hera Syndulla",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.292Z",
                  "created_at": "2019-04-19T11:50:52.293Z",
                  "updated_at": "2019-04-19T11:50:52.293Z"
                },
                {
                  "id": 192,
                  "name": "Watto",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.294Z",
                  "created_at": "2019-04-19T11:50:52.295Z",
                  "updated_at": "2019-04-19T11:50:52.295Z"
                },
                {
                  "id": 193,
                  "name": "Darth Vader",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.296Z",
                  "created_at": "2019-04-19T11:50:52.297Z",
                  "updated_at": "2019-04-19T11:50:52.297Z"
                },
                {
                  "id": 194,
                  "name": "Bendu",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.298Z",
                  "created_at": "2019-04-19T11:50:52.299Z",
                  "updated_at": "2019-04-19T11:50:52.299Z"
                },
                {
                  "id": 195,
                  "name": "Savage Opress",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.300Z",
                  "created_at": "2019-04-19T11:50:52.301Z",
                  "updated_at": "2019-04-19T11:50:52.301Z"
                },
                {
                  "id": 196,
                  "name": "Darth Caedus",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.302Z",
                  "created_at": "2019-04-19T11:50:52.302Z",
                  "updated_at": "2019-04-19T11:50:52.302Z"
                },
                {
                  "id": 197,
                  "name": "Chirrut Imwe",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.303Z",
                  "created_at": "2019-04-19T11:50:52.304Z",
                  "updated_at": "2019-04-19T11:50:52.304Z"
                },
                {
                  "id": 198,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.305Z",
                  "created_at": "2019-04-19T11:50:52.306Z",
                  "updated_at": "2019-04-19T11:50:52.306Z"
                },
                {
                  "id": 199,
                  "name": "Mace Windu",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.307Z",
                  "created_at": "2019-04-19T11:50:52.308Z",
                  "updated_at": "2019-04-19T11:50:52.308Z"
                },
                {
                  "id": 200,
                  "name": "Jango Fett",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.309Z",
                  "created_at": "2019-04-19T11:50:52.309Z",
                  "updated_at": "2019-04-19T11:50:52.309Z"
                },
                {
                  "id": 201,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.310Z",
                  "created_at": "2019-04-19T11:50:52.311Z",
                  "updated_at": "2019-04-19T11:50:52.311Z"
                },
                {
                  "id": 202,
                  "name": "Darth Sidious",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.312Z",
                  "created_at": "2019-04-19T11:50:52.313Z",
                  "updated_at": "2019-04-19T11:50:52.313Z"
                },
                {
                  "id": 203,
                  "name": "Darth Maul",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.314Z",
                  "created_at": "2019-04-19T11:50:52.315Z",
                  "updated_at": "2019-04-19T11:50:52.315Z"
                },
                {
                  "id": 204,
                  "name": "Darth Maul",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.316Z",
                  "created_at": "2019-04-19T11:50:52.317Z",
                  "updated_at": "2019-04-19T11:50:52.317Z"
                },
                {
                  "id": 205,
                  "name": "Watto",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.318Z",
                  "created_at": "2019-04-19T11:50:52.318Z",
                  "updated_at": "2019-04-19T11:50:52.318Z"
                },
                {
                  "id": 206,
                  "name": "Kanan Jarrus",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.319Z",
                  "created_at": "2019-04-19T11:50:52.320Z",
                  "updated_at": "2019-04-19T11:50:52.320Z"
                },
                {
                  "id": 207,
                  "name": "Anakin Skywalker",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.321Z",
                  "created_at": "2019-04-19T11:50:52.322Z",
                  "updated_at": "2019-04-19T11:50:52.322Z"
                },
                {
                  "id": 208,
                  "name": "Boba Fett",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-26T11:50:52.323Z",
                  "created_at": "2019-04-19T11:50:52.324Z",
                  "updated_at": "2019-04-19T11:50:52.324Z"
                },
                {
                  "id": null,
                  "name": null,
                  "done": false,
                  "todo_id": 17,
                  "deadline": null,
                  "created_at": null,
                  "updated_at": null
                }
              ],
              "user": {
                "id": 19,
                "name": "Kasie Lebsack",
                "email": "joselittel@gerlachanderson.net",
                "password_digest": "$2a$04$87B6e08Zssv31iMH7BvKTuhfHLQsmWWOYypQhQIT0nR4jeumt3f3G",
                "created_at": "2019-04-19T11:50:52.285Z",
                "updated_at": "2019-04-19T11:50:52.285Z"
              }
            }

### Put todos/:todo_id/items/:id [PUT /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `18` (number, required)
    + id: `209` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/todos/18/items/209`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 209,
              "name": "Mozart",
              "done": false,
              "todo_id": 18,
              "deadline": "2019-04-26T11:50:52.343Z",
              "created_at": "2019-04-19T11:50:52.344Z",
              "updated_at": "2019-04-19T11:50:52.386Z",
              "todo": {
                "id": 18,
                "title": "suscipit",
                "user_id": 20,
                "created_at": "2019-04-19T11:50:52.342Z",
                "updated_at": "2019-04-19T11:50:52.342Z"
              }
            }

+ Request updates the item
**PUT**&nbsp;&nbsp;`/todos/19/items/229`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 229,
              "name": "Mozart",
              "done": false,
              "todo_id": 19,
              "deadline": "2019-04-26T11:50:52.396Z",
              "created_at": "2019-04-19T11:50:52.397Z",
              "updated_at": "2019-04-19T11:50:52.439Z",
              "todo": {
                "id": 19,
                "title": "animi",
                "user_id": 21,
                "created_at": "2019-04-19T11:50:52.395Z",
                "updated_at": "2019-04-19T11:50:52.395Z"
              }
            }

+ Request returns status code 404
**PUT**&nbsp;&nbsp;`/todos/20/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
            }

+ Request returns a not found message
**PUT**&nbsp;&nbsp;`/todos/21/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
            }

### Delete todos/:todo_id/items/:id [DELETE /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `22` (number, required)
    + id: `289` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/22/items/289`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204

## Todos [/todos/:id]


### Get todos [GET /todos]


+ Request returns todos
**GET**&nbsp;&nbsp;`/todos`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 23,
                "title": "expedita",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.588Z",
                "updated_at": "2019-04-19T11:50:52.588Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 24,
                "title": "odit",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.590Z",
                "updated_at": "2019-04-19T11:50:52.590Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 25,
                "title": "voluptates",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.592Z",
                "updated_at": "2019-04-19T11:50:52.592Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 26,
                "title": "repellendus",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.593Z",
                "updated_at": "2019-04-19T11:50:52.593Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 27,
                "title": "dolorem",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.595Z",
                "updated_at": "2019-04-19T11:50:52.595Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 28,
                "title": "iste",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.597Z",
                "updated_at": "2019-04-19T11:50:52.597Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 29,
                "title": "quia",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.598Z",
                "updated_at": "2019-04-19T11:50:52.598Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 30,
                "title": "eius",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.600Z",
                "updated_at": "2019-04-19T11:50:52.600Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 31,
                "title": "provident",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.602Z",
                "updated_at": "2019-04-19T11:50:52.602Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              },
              {
                "id": 32,
                "title": "molestiae",
                "user_id": 25,
                "created_at": "2019-04-19T11:50:52.603Z",
                "updated_at": "2019-04-19T11:50:52.603Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Stan Schowalter",
                  "email": "rubenstehr@skilesvon.co",
                  "password_digest": "$2a$04$81bjD479HPGcng9Wvke.OetYyqBm.Rc4EN8HLgmllb83k5SxpSHPC",
                  "created_at": "2019-04-19T11:50:52.586Z",
                  "updated_at": "2019-04-19T11:50:52.586Z"
                }
              }
            ]

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 33,
                "title": "omnis",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.630Z",
                "updated_at": "2019-04-19T11:50:52.630Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 34,
                "title": "est",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.632Z",
                "updated_at": "2019-04-19T11:50:52.632Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 35,
                "title": "rerum",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.634Z",
                "updated_at": "2019-04-19T11:50:52.634Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 36,
                "title": "sint",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.636Z",
                "updated_at": "2019-04-19T11:50:52.636Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 37,
                "title": "voluptatem",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.637Z",
                "updated_at": "2019-04-19T11:50:52.637Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 38,
                "title": "eius",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.639Z",
                "updated_at": "2019-04-19T11:50:52.639Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 39,
                "title": "libero",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.641Z",
                "updated_at": "2019-04-19T11:50:52.641Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 40,
                "title": "odio",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.643Z",
                "updated_at": "2019-04-19T11:50:52.643Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 41,
                "title": "et",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.644Z",
                "updated_at": "2019-04-19T11:50:52.644Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              },
              {
                "id": 42,
                "title": "ea",
                "user_id": 26,
                "created_at": "2019-04-19T11:50:52.646Z",
                "updated_at": "2019-04-19T11:50:52.646Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Jimmie Feest Sr.",
                  "email": "tomokuneva@effertzgraham.co",
                  "password_digest": "$2a$04$5CuLhWAjzyKKPmn9eCvYyONBzpEbNnAjD77DGvY/iHYLe3uBNCjJe",
                  "created_at": "2019-04-19T11:50:52.628Z",
                  "updated_at": "2019-04-19T11:50:52.628Z"
                }
              }
            ]

### Get todos/:id [GET /todos/{id}]

+ Parameters
    + id: `43` (number, required)

+ Request returns the todo
**GET**&nbsp;&nbsp;`/todos/43`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 43,
              "title": "odit",
              "user_id": 27,
              "created_at": "2019-04-19T11:50:52.667Z",
              "updated_at": "2019-04-19T11:50:52.667Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Martin Hessel",
                "email": "nadenehammes@reynolds.io",
                "password_digest": "$2a$04$EC6Ve7N.E2QcBbJNCgn.vu4jGYHnbZhwip.FYNSQGRR/jsJ4mQ/Aq",
                "created_at": "2019-04-19T11:50:52.665Z",
                "updated_at": "2019-04-19T11:50:52.665Z"
              }
            }

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/53`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 53,
              "title": "fugit",
              "user_id": 28,
              "created_at": "2019-04-19T11:50:52.692Z",
              "updated_at": "2019-04-19T11:50:52.692Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Edra Jenkins",
                "email": "roccozulauf@roberts.info",
                "password_digest": "$2a$04$mtdg4ggsg6w05y4eM6.Lye0JkrU8mHaZ.Oku12LGeN.z3mD9ORCJK",
                "created_at": "2019-04-19T11:50:52.690Z",
                "updated_at": "2019-04-19T11:50:52.690Z"
              }
            }

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/todos/1000`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Todo with 'id'=1000"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/todos/1000`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Todo with 'id'=1000"
            }

### Post todos [POST /todos]


+ Request creates a todo
**POST**&nbsp;&nbsp;`/todos`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Learn Elm",
              "user_id": "31"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 93,
              "title": "Learn Elm",
              "user_id": 31,
              "created_at": "2019-04-19T11:50:52.786Z",
              "updated_at": "2019-04-19T11:50:52.786Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Magnolia Beahan",
                "email": "freddiegislason@bodestark.co",
                "password_digest": "$2a$04$ZcbRvTVOOEnkju6vw2xn/Ohe8JrJb7fH/HVHtgvRiTQDlYRqlG8DG",
                "created_at": "2019-04-19T11:50:52.764Z",
                "updated_at": "2019-04-19T11:50:52.764Z"
              }
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Learn Elm",
              "user_id": "32"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 104,
              "title": "Learn Elm",
              "user_id": 32,
              "created_at": "2019-04-19T11:50:52.813Z",
              "updated_at": "2019-04-19T11:50:52.813Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Carma Stracke",
                "email": "nathanael@schoen.com",
                "password_digest": "$2a$04$kSJKKFcxqEQZdY5AQx7kyOkxBxMEoOu2LhtNyH6CDq484RyGZBslW",
                "created_at": "2019-04-19T11:50:52.792Z",
                "updated_at": "2019-04-19T11:50:52.792Z"
              }
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": null
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": null,
              "title": null,
              "user_id": 33,
              "created_at": null,
              "updated_at": null,
              "items": [
            
              ],
              "user": {
                "id": 33,
                "name": "Lurlene McGlynn",
                "email": "yongbrekke@kub.biz",
                "password_digest": "$2a$04$exg6qfw6l/au6P5sxTTt6uPoOEXzmEU/Edbh4XJuoKNGtxihDXfpm",
                "created_at": "2019-04-19T11:50:52.820Z",
                "updated_at": "2019-04-19T11:50:52.820Z"
              }
            }

### Put todos/:id [PUT /todos/{id}]

+ Parameters
    + id: `115` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/todos/115`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Shopping"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 115,
              "title": "Shopping",
              "user_id": 34,
              "created_at": "2019-04-19T11:50:52.848Z",
              "updated_at": "2019-04-19T11:50:52.867Z",
              "items": [
            
              ],
              "user": {
                "id": 34,
                "name": "Mathilde Keebler",
                "email": "tomaufderhar@reynolds.info",
                "password_digest": "$2a$04$AHPKxIZzMV3pGrApIVU1oep9l4QKZn6KeeMaNTlQljGgJ..IUMrCy",
                "created_at": "2019-04-19T11:50:52.846Z",
                "updated_at": "2019-04-19T11:50:52.846Z"
              }
            }

### Delete todos/:id [DELETE /todos/{id}]

+ Parameters
    + id: `125` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/125`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204
