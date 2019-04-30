

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
              "email": "dwain@bednar.io",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTY3NTMzMzN9.kskvq4_V6TcLOJZaGgk6nNZS6Ev0OCJTbt-GH-sk_Kc"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "denysekunze@wildermanbuckridge.name",
              "password": "G8PuM13cD0WfPeK"
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
              "name": "Brian Rutherford",
              "email": "myrtaterry@marvin.org",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTU2NzUzMzM1fQ.bsljBkWM2ZehUQ2_wWrtqC9-EFGHDf9R2L751bPzzOU"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Tari Pfannerstill",
              "email": "lucien@lindgrenrohan.info",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU2NzUzMzM1fQ.2wc8zkV7xMKuDXfpVosZPpUerJ8oYKfgvyUl_rA5NKc"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Keely West",
              "email": "andreas@gutmann.info",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU2NzUzMzM1fQ.PRmDChBNHudnAD3BoyMLCjfazj3dt0zsKfPHCfEPBN4"
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
                "body": "Mace Windutest",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-04-30T23:28:53.931Z",
                "updated_at": "2019-04-30T23:28:53.931Z",
                "item": {
                  "id": 1,
                  "name": "Watto",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-05-07T23:28:53.919Z",
                  "created_at": "2019-04-30T23:28:53.922Z",
                  "updated_at": "2019-04-30T23:28:53.922Z"
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
              "body": "Chewbaccatest",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-04-30T23:28:53.966Z",
              "updated_at": "2019-04-30T23:28:53.966Z",
              "item": {
                "id": 2,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-05-07T23:28:53.964Z",
                "created_at": "2019-04-30T23:28:53.965Z",
                "updated_at": "2019-04-30T23:28:53.965Z"
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
              "id": 4,
              "body": "Visit Narnia",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 3,
              "created_at": "2019-04-30T23:28:53.993Z",
              "updated_at": "2019-04-30T23:28:53.993Z",
              "item": {
                "id": 3,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 3,
                "deadline": "2019-05-07T23:28:53.984Z",
                "created_at": "2019-04-30T23:28:53.986Z",
                "updated_at": "2019-04-30T23:28:53.986Z"
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
              "id": null,
              "body": null,
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 4,
              "created_at": null,
              "updated_at": null,
              "item": {
                "id": 4,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 4,
                "deadline": "2019-05-07T23:28:54.003Z",
                "created_at": "2019-04-30T23:28:54.004Z",
                "updated_at": "2019-04-30T23:28:54.004Z"
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
              "created_at": "2019-04-30T23:28:54.024Z",
              "updated_at": "2019-04-30T23:28:54.033Z",
              "item": {
                "id": 5,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 5,
                "deadline": "2019-05-07T23:28:54.022Z",
                "created_at": "2019-04-30T23:28:54.023Z",
                "updated_at": "2019-04-30T23:28:54.023Z"
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
              "created_at": "2019-04-30T23:28:54.045Z",
              "updated_at": "2019-04-30T23:28:54.052Z",
              "item": {
                "id": 6,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 6,
                "deadline": "2019-05-07T23:28:54.043Z",
                "created_at": "2019-04-30T23:28:54.044Z",
                "updated_at": "2019-04-30T23:28:54.044Z"
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
                "name": "General Hux",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.080Z",
                "created_at": "2019-04-30T23:28:54.080Z",
                "updated_at": "2019-04-30T23:28:54.080Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 9,
                "name": "Sheev Palpatine",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.082Z",
                "created_at": "2019-04-30T23:28:54.083Z",
                "updated_at": "2019-04-30T23:28:54.083Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 10,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.084Z",
                "created_at": "2019-04-30T23:28:54.085Z",
                "updated_at": "2019-04-30T23:28:54.085Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 11,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.086Z",
                "created_at": "2019-04-30T23:28:54.087Z",
                "updated_at": "2019-04-30T23:28:54.087Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 12,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.088Z",
                "created_at": "2019-04-30T23:28:54.088Z",
                "updated_at": "2019-04-30T23:28:54.088Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 13,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.089Z",
                "created_at": "2019-04-30T23:28:54.090Z",
                "updated_at": "2019-04-30T23:28:54.090Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 14,
                "name": "Panaka",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.091Z",
                "created_at": "2019-04-30T23:28:54.092Z",
                "updated_at": "2019-04-30T23:28:54.092Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 15,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.093Z",
                "created_at": "2019-04-30T23:28:54.094Z",
                "updated_at": "2019-04-30T23:28:54.094Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 16,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.095Z",
                "created_at": "2019-04-30T23:28:54.095Z",
                "updated_at": "2019-04-30T23:28:54.095Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 17,
                "name": "Greedo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.096Z",
                "created_at": "2019-04-30T23:28:54.097Z",
                "updated_at": "2019-04-30T23:28:54.097Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 18,
                "name": "Sebulba",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.098Z",
                "created_at": "2019-04-30T23:28:54.099Z",
                "updated_at": "2019-04-30T23:28:54.099Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 19,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.100Z",
                "created_at": "2019-04-30T23:28:54.101Z",
                "updated_at": "2019-04-30T23:28:54.101Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 20,
                "name": "Greedo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.102Z",
                "created_at": "2019-04-30T23:28:54.103Z",
                "updated_at": "2019-04-30T23:28:54.103Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 21,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.104Z",
                "created_at": "2019-04-30T23:28:54.104Z",
                "updated_at": "2019-04-30T23:28:54.104Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 22,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.105Z",
                "created_at": "2019-04-30T23:28:54.106Z",
                "updated_at": "2019-04-30T23:28:54.106Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 23,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.107Z",
                "created_at": "2019-04-30T23:28:54.108Z",
                "updated_at": "2019-04-30T23:28:54.108Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 24,
                "name": "Rey",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.109Z",
                "created_at": "2019-04-30T23:28:54.110Z",
                "updated_at": "2019-04-30T23:28:54.110Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 25,
                "name": "Bail Organa",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.111Z",
                "created_at": "2019-04-30T23:28:54.112Z",
                "updated_at": "2019-04-30T23:28:54.112Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 26,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.112Z",
                "created_at": "2019-04-30T23:28:54.113Z",
                "updated_at": "2019-04-30T23:28:54.113Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
                }
              },
              {
                "id": 27,
                "name": "Jyn Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T23:28:54.114Z",
                "created_at": "2019-04-30T23:28:54.115Z",
                "updated_at": "2019-04-30T23:28:54.115Z",
                "todo": {
                  "id": 8,
                  "title": "officia",
                  "user_id": 10,
                  "created_at": "2019-04-30T23:28:54.078Z",
                  "updated_at": "2019-04-30T23:28:54.078Z"
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
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.148Z",
                "created_at": "2019-04-30T23:28:54.149Z",
                "updated_at": "2019-04-30T23:28:54.149Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 29,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.150Z",
                "created_at": "2019-04-30T23:28:54.151Z",
                "updated_at": "2019-04-30T23:28:54.151Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 30,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.152Z",
                "created_at": "2019-04-30T23:28:54.153Z",
                "updated_at": "2019-04-30T23:28:54.153Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 31,
                "name": "Yoda",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.154Z",
                "created_at": "2019-04-30T23:28:54.155Z",
                "updated_at": "2019-04-30T23:28:54.155Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 32,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.157Z",
                "created_at": "2019-04-30T23:28:54.158Z",
                "updated_at": "2019-04-30T23:28:54.158Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 33,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.159Z",
                "created_at": "2019-04-30T23:28:54.160Z",
                "updated_at": "2019-04-30T23:28:54.160Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 34,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.161Z",
                "created_at": "2019-04-30T23:28:54.162Z",
                "updated_at": "2019-04-30T23:28:54.162Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 35,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.162Z",
                "created_at": "2019-04-30T23:28:54.163Z",
                "updated_at": "2019-04-30T23:28:54.163Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 36,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.164Z",
                "created_at": "2019-04-30T23:28:54.165Z",
                "updated_at": "2019-04-30T23:28:54.165Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 37,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.167Z",
                "created_at": "2019-04-30T23:28:54.167Z",
                "updated_at": "2019-04-30T23:28:54.167Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 38,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.168Z",
                "created_at": "2019-04-30T23:28:54.169Z",
                "updated_at": "2019-04-30T23:28:54.169Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 39,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.170Z",
                "created_at": "2019-04-30T23:28:54.171Z",
                "updated_at": "2019-04-30T23:28:54.171Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 40,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.172Z",
                "created_at": "2019-04-30T23:28:54.173Z",
                "updated_at": "2019-04-30T23:28:54.173Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 41,
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.173Z",
                "created_at": "2019-04-30T23:28:54.174Z",
                "updated_at": "2019-04-30T23:28:54.174Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 42,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.175Z",
                "created_at": "2019-04-30T23:28:54.176Z",
                "updated_at": "2019-04-30T23:28:54.176Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 43,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.177Z",
                "created_at": "2019-04-30T23:28:54.178Z",
                "updated_at": "2019-04-30T23:28:54.178Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 44,
                "name": "Sebulba",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.179Z",
                "created_at": "2019-04-30T23:28:54.179Z",
                "updated_at": "2019-04-30T23:28:54.179Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 45,
                "name": "Yoda",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.180Z",
                "created_at": "2019-04-30T23:28:54.181Z",
                "updated_at": "2019-04-30T23:28:54.181Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 46,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.182Z",
                "created_at": "2019-04-30T23:28:54.183Z",
                "updated_at": "2019-04-30T23:28:54.183Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
                }
              },
              {
                "id": 47,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T23:28:54.184Z",
                "created_at": "2019-04-30T23:28:54.185Z",
                "updated_at": "2019-04-30T23:28:54.185Z",
                "todo": {
                  "id": 9,
                  "title": "corrupti",
                  "user_id": 11,
                  "created_at": "2019-04-30T23:28:54.146Z",
                  "updated_at": "2019-04-30T23:28:54.146Z"
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
              "name": "Saw Gerrera",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-05-07T23:28:54.295Z",
              "created_at": "2019-04-30T23:28:54.296Z",
              "updated_at": "2019-04-30T23:28:54.296Z",
              "todo": {
                "id": 12,
                "title": "aut",
                "user_id": 14,
                "created_at": "2019-04-30T23:28:54.294Z",
                "updated_at": "2019-04-30T23:28:54.294Z"
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
              "name": "Anakin Skywalker",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-05-07T23:28:54.344Z",
              "created_at": "2019-04-30T23:28:54.345Z",
              "updated_at": "2019-04-30T23:28:54.345Z",
              "todo": {
                "id": 13,
                "title": "fugit",
                "user_id": 15,
                "created_at": "2019-04-30T23:28:54.343Z",
                "updated_at": "2019-04-30T23:28:54.343Z"
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
              "id": 188,
              "name": "Visit Narnia",
              "done": false,
              "todo_id": 16,
              "deadline": null,
              "created_at": "2019-04-30T23:28:54.553Z",
              "updated_at": "2019-04-30T23:28:54.553Z",
              "todo": {
                "id": 16,
                "title": "at",
                "user_id": 18,
                "created_at": "2019-04-30T23:28:54.507Z",
                "updated_at": "2019-04-30T23:28:54.507Z"
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
              "id": null,
              "name": null,
              "done": false,
              "todo_id": 17,
              "deadline": null,
              "created_at": null,
              "updated_at": null,
              "todo": {
                "id": 17,
                "title": "atque",
                "user_id": 19,
                "created_at": "2019-04-30T23:28:54.562Z",
                "updated_at": "2019-04-30T23:28:54.562Z"
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
              "deadline": "2019-05-07T23:28:54.609Z",
              "created_at": "2019-04-30T23:28:54.610Z",
              "updated_at": "2019-04-30T23:28:54.648Z",
              "todo": {
                "id": 18,
                "title": "pariatur",
                "user_id": 20,
                "created_at": "2019-04-30T23:28:54.608Z",
                "updated_at": "2019-04-30T23:28:54.608Z"
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
              "deadline": "2019-05-07T23:28:54.657Z",
              "created_at": "2019-04-30T23:28:54.658Z",
              "updated_at": "2019-04-30T23:28:54.695Z",
              "todo": {
                "id": 19,
                "title": "provident",
                "user_id": 21,
                "created_at": "2019-04-30T23:28:54.656Z",
                "updated_at": "2019-04-30T23:28:54.656Z"
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
                "title": "accusamus",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.847Z",
                "updated_at": "2019-04-30T23:28:54.847Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 24,
                "title": "magni",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.849Z",
                "updated_at": "2019-04-30T23:28:54.849Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 25,
                "title": "aut",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.850Z",
                "updated_at": "2019-04-30T23:28:54.850Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 26,
                "title": "ut",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.852Z",
                "updated_at": "2019-04-30T23:28:54.852Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 27,
                "title": "provident",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.854Z",
                "updated_at": "2019-04-30T23:28:54.854Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 28,
                "title": "rerum",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.855Z",
                "updated_at": "2019-04-30T23:28:54.855Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 29,
                "title": "doloribus",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.857Z",
                "updated_at": "2019-04-30T23:28:54.857Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 30,
                "title": "dolor",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.858Z",
                "updated_at": "2019-04-30T23:28:54.858Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 31,
                "title": "ea",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.860Z",
                "updated_at": "2019-04-30T23:28:54.860Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
                }
              },
              {
                "id": 32,
                "title": "quaerat",
                "user_id": 25,
                "created_at": "2019-04-30T23:28:54.862Z",
                "updated_at": "2019-04-30T23:28:54.862Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Alonzo Christiansen",
                  "email": "thanh@emard.net",
                  "password_digest": "$2a$04$QF2DEeIL.Eo2cT/Iyq9D2.0tEls9UAMN6l5UN6MrHOS8EPCQdNc7e",
                  "created_at": "2019-04-30T23:28:54.845Z",
                  "updated_at": "2019-04-30T23:28:54.845Z"
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
                "title": "vero",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.890Z",
                "updated_at": "2019-04-30T23:28:54.890Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 34,
                "title": "delectus",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.892Z",
                "updated_at": "2019-04-30T23:28:54.892Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 35,
                "title": "numquam",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.894Z",
                "updated_at": "2019-04-30T23:28:54.894Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 36,
                "title": "cupiditate",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.895Z",
                "updated_at": "2019-04-30T23:28:54.895Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 37,
                "title": "sunt",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.897Z",
                "updated_at": "2019-04-30T23:28:54.897Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 38,
                "title": "enim",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.899Z",
                "updated_at": "2019-04-30T23:28:54.899Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 39,
                "title": "qui",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.901Z",
                "updated_at": "2019-04-30T23:28:54.901Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 40,
                "title": "voluptates",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.902Z",
                "updated_at": "2019-04-30T23:28:54.902Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 41,
                "title": "cum",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.904Z",
                "updated_at": "2019-04-30T23:28:54.904Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
                }
              },
              {
                "id": 42,
                "title": "illo",
                "user_id": 26,
                "created_at": "2019-04-30T23:28:54.906Z",
                "updated_at": "2019-04-30T23:28:54.906Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mrs. Emilio Kassulke",
                  "email": "blanch@turcottestanton.biz",
                  "password_digest": "$2a$04$Z.kcKUh5myMM8VUTuDVgd.CNqfl8VLq.NmqpEwgQ48uhALbEFYtlm",
                  "created_at": "2019-04-30T23:28:54.888Z",
                  "updated_at": "2019-04-30T23:28:54.888Z"
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
              "title": "blanditiis",
              "user_id": 27,
              "created_at": "2019-04-30T23:28:54.927Z",
              "updated_at": "2019-04-30T23:28:54.927Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Valentine Boehm",
                "email": "darinbashirian@flatleywill.name",
                "password_digest": "$2a$04$G6Cg2peBcZWp/THLzc9Vye//8GvcmVnxYtSaRiYk1MqeJIyN6LpWe",
                "created_at": "2019-04-30T23:28:54.925Z",
                "updated_at": "2019-04-30T23:28:54.925Z"
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
              "title": "a",
              "user_id": 28,
              "created_at": "2019-04-30T23:28:54.953Z",
              "updated_at": "2019-04-30T23:28:54.953Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Khadijah Schmeler",
                "email": "bert@hellergulgowski.io",
                "password_digest": "$2a$04$yP3qDAORG7f4RMX/LlvEGeh5iPhbIk47qm2mpp9fVdD6dXFzKqtJi",
                "created_at": "2019-04-30T23:28:54.951Z",
                "updated_at": "2019-04-30T23:28:54.951Z"
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
              "created_at": "2019-04-30T23:28:55.045Z",
              "updated_at": "2019-04-30T23:28:55.045Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Ashely Roob DVM",
                "email": "bryanna@hermistonfay.com",
                "password_digest": "$2a$04$NnLM1cA1lTZAqzg3hnALSeIH7ydqdIU2vTixC/LZBX.pcNlTjOxn2",
                "created_at": "2019-04-30T23:28:55.024Z",
                "updated_at": "2019-04-30T23:28:55.024Z"
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
              "created_at": "2019-04-30T23:28:55.071Z",
              "updated_at": "2019-04-30T23:28:55.071Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Refugio Haley",
                "email": "fritzheaney@sipes.com",
                "password_digest": "$2a$04$UF74A.zNiLcVXwnb/6Tlsexx7UBIftnXcDbgz4vTNJul5yURyq3lC",
                "created_at": "2019-04-30T23:28:55.051Z",
                "updated_at": "2019-04-30T23:28:55.051Z"
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
                "name": "Ms. Dennis Howe",
                "email": "joan@crist.io",
                "password_digest": "$2a$04$/EDUOKrgGwjXxOWbb/7Vjuvgg4LeHTwC0ChBnvMYWSzbJmS9XN0pu",
                "created_at": "2019-04-30T23:28:55.077Z",
                "updated_at": "2019-04-30T23:28:55.077Z"
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
              "created_at": "2019-04-30T23:28:55.105Z",
              "updated_at": "2019-04-30T23:28:55.123Z",
              "items": [
            
              ],
              "user": {
                "id": 34,
                "name": "Humberto Rosenbaum III",
                "email": "roy@muellerkilback.co",
                "password_digest": "$2a$04$QinMDCyaR7o3/ip9XpWNl.U7YHJbFTH8DJSidUQrZqKPy5DfWSUmi",
                "created_at": "2019-04-30T23:28:55.103Z",
                "updated_at": "2019-04-30T23:28:55.103Z"
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
