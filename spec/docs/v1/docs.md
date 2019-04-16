

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
              "email": "jeannielindgren@ryangoodwin.net",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTU1Mjg3NzN9.ASTKKcLGxVg5pbA9BUAzinOAV-Dspkk3LWnn06TwSIg"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "sidneyabernathy@hand.co",
              "password": "R51n7z9e69Vq4"
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
              "name": "Celsa Hayes",
              "email": "morganhackett@adams.biz",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU1NTI4Nzc1fQ.P_W3RTIQbhOAXt0x4rirf7tdsN9Pj_GR51foVq9jBUY"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Augustine Feil",
              "email": "joesph@okunevaoconnell.biz",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU1NTI4Nzc1fQ.sFjj8sFo_Cw-AdDvgW5uBWp4dlHYIqFg2iBRJqD7guE"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Palmira King",
              "email": "ettadoyle@kutch.name",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOSwiZXhwIjoxNTU1NTI4Nzc1fQ.HHOI6CjztmCE7uenJ4TdmPOjsml_ngwscTqQnqqgq3s"
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
                "body": "Panaka",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-04-16T19:19:34.029Z",
                "updated_at": "2019-04-16T19:19:34.029Z",
                "item": {
                  "id": 1,
                  "name": "Ki-Adi-Mundi",
                  "done": false,
                  "todo_id": 1,
                  "created_at": "2019-04-16T19:19:34.021Z",
                  "updated_at": "2019-04-16T19:19:34.021Z"
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
              "body": "Sebulba",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-04-16T19:19:34.063Z",
              "updated_at": "2019-04-16T19:19:34.063Z",
              "item": {
                "id": 2,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-16T19:19:34.062Z",
                "updated_at": "2019-04-16T19:19:34.062Z"
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
              "name": "Shmi Skywalker",
              "done": false,
              "todo_id": 3,
              "created_at": "2019-04-16T19:19:34.078Z",
              "updated_at": "2019-04-16T19:19:34.078Z",
              "todo": {
                "id": 3,
                "title": "veniam",
                "user_id": 5,
                "created_at": "2019-04-16T19:19:34.076Z",
                "updated_at": "2019-04-16T19:19:34.076Z"
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
              "name": "Kanan Jarrus",
              "done": false,
              "todo_id": 4,
              "created_at": "2019-04-16T19:19:34.098Z",
              "updated_at": "2019-04-16T19:19:34.098Z",
              "todo": {
                "id": 4,
                "title": "eos",
                "user_id": 6,
                "created_at": "2019-04-16T19:19:34.095Z",
                "updated_at": "2019-04-16T19:19:34.095Z"
              }
            }

### Put /todos/:todo_id/items/:item_id/comments/:id [PUT /todos/{todo_id}/items/{item_id}/comments/{id}]

+ Parameters
    + todo_id: `5` (number, required)
    + item_id: `5` (number, required)
    + id: `6` (number, required)

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/todos/5/items/5/comments/6`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "body": "Mozart"
            }

+ Response 204

+ Request updates the item
**PUT**&nbsp;&nbsp;`/todos/6/items/6/comments/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "body": "Mozart"
            }

+ Response 204

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
                "name": "Han Solo",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.161Z",
                "updated_at": "2019-04-16T19:19:34.161Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 9,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.163Z",
                "updated_at": "2019-04-16T19:19:34.163Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 10,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.165Z",
                "updated_at": "2019-04-16T19:19:34.165Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 11,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.166Z",
                "updated_at": "2019-04-16T19:19:34.166Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 12,
                "name": "Bendu",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.168Z",
                "updated_at": "2019-04-16T19:19:34.168Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 13,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.169Z",
                "updated_at": "2019-04-16T19:19:34.169Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 14,
                "name": "Ki-Adi-Mundi",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.171Z",
                "updated_at": "2019-04-16T19:19:34.171Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 15,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.172Z",
                "updated_at": "2019-04-16T19:19:34.172Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 16,
                "name": "Kylo Ren",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.174Z",
                "updated_at": "2019-04-16T19:19:34.174Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 17,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.175Z",
                "updated_at": "2019-04-16T19:19:34.175Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 18,
                "name": "Han Solo",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.177Z",
                "updated_at": "2019-04-16T19:19:34.177Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 19,
                "name": "Yoda",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.178Z",
                "updated_at": "2019-04-16T19:19:34.178Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 20,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.180Z",
                "updated_at": "2019-04-16T19:19:34.180Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 21,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.181Z",
                "updated_at": "2019-04-16T19:19:34.181Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 22,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.183Z",
                "updated_at": "2019-04-16T19:19:34.183Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 23,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.185Z",
                "updated_at": "2019-04-16T19:19:34.185Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 24,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.186Z",
                "updated_at": "2019-04-16T19:19:34.186Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 25,
                "name": "Jyn Erso",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.188Z",
                "updated_at": "2019-04-16T19:19:34.188Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 26,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.189Z",
                "updated_at": "2019-04-16T19:19:34.189Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
                }
              },
              {
                "id": 27,
                "name": "Yoda",
                "done": false,
                "todo_id": 8,
                "created_at": "2019-04-16T19:19:34.191Z",
                "updated_at": "2019-04-16T19:19:34.191Z",
                "todo": {
                  "id": 8,
                  "title": "perferendis",
                  "user_id": 10,
                  "created_at": "2019-04-16T19:19:34.159Z",
                  "updated_at": "2019-04-16T19:19:34.159Z"
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
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.210Z",
                "updated_at": "2019-04-16T19:19:34.210Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 29,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.212Z",
                "updated_at": "2019-04-16T19:19:34.212Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 30,
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.213Z",
                "updated_at": "2019-04-16T19:19:34.213Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 31,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.214Z",
                "updated_at": "2019-04-16T19:19:34.214Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 32,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.216Z",
                "updated_at": "2019-04-16T19:19:34.216Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 33,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.217Z",
                "updated_at": "2019-04-16T19:19:34.217Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 34,
                "name": "Greedo",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.219Z",
                "updated_at": "2019-04-16T19:19:34.219Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 35,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.220Z",
                "updated_at": "2019-04-16T19:19:34.220Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 36,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.222Z",
                "updated_at": "2019-04-16T19:19:34.222Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 37,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.224Z",
                "updated_at": "2019-04-16T19:19:34.224Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 38,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.225Z",
                "updated_at": "2019-04-16T19:19:34.225Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 39,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.227Z",
                "updated_at": "2019-04-16T19:19:34.227Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 40,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.228Z",
                "updated_at": "2019-04-16T19:19:34.228Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 41,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.229Z",
                "updated_at": "2019-04-16T19:19:34.229Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 42,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.231Z",
                "updated_at": "2019-04-16T19:19:34.231Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 43,
                "name": "Borvo the Hutt",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.242Z",
                "updated_at": "2019-04-16T19:19:34.242Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 44,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.243Z",
                "updated_at": "2019-04-16T19:19:34.243Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 45,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.245Z",
                "updated_at": "2019-04-16T19:19:34.245Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 46,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.247Z",
                "updated_at": "2019-04-16T19:19:34.247Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
                }
              },
              {
                "id": 47,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 9,
                "created_at": "2019-04-16T19:19:34.249Z",
                "updated_at": "2019-04-16T19:19:34.249Z",
                "todo": {
                  "id": 9,
                  "title": "ducimus",
                  "user_id": 11,
                  "created_at": "2019-04-16T19:19:34.208Z",
                  "updated_at": "2019-04-16T19:19:34.208Z"
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
              "name": "Chirrut Imwe",
              "done": false,
              "todo_id": 12,
              "created_at": "2019-04-16T19:19:34.350Z",
              "updated_at": "2019-04-16T19:19:34.350Z",
              "todo": {
                "id": 12,
                "title": "doloremque",
                "user_id": 14,
                "created_at": "2019-04-16T19:19:34.348Z",
                "updated_at": "2019-04-16T19:19:34.348Z"
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
              "name": "Kanan Jarrus",
              "done": false,
              "todo_id": 13,
              "created_at": "2019-04-16T19:19:34.389Z",
              "updated_at": "2019-04-16T19:19:34.389Z",
              "todo": {
                "id": 13,
                "title": "reiciendis",
                "user_id": 15,
                "created_at": "2019-04-16T19:19:34.387Z",
                "updated_at": "2019-04-16T19:19:34.387Z"
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
              "title": "expedita",
              "user_id": 18,
              "created_at": "2019-04-16T19:19:34.516Z",
              "updated_at": "2019-04-16T19:19:34.516Z",
              "items": [
                {
                  "id": 168,
                  "name": "Sheev Palpatine",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.518Z",
                  "updated_at": "2019-04-16T19:19:34.518Z"
                },
                {
                  "id": 169,
                  "name": "Sabine Wren",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.520Z",
                  "updated_at": "2019-04-16T19:19:34.520Z"
                },
                {
                  "id": 170,
                  "name": "Lando Calrissian",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.521Z",
                  "updated_at": "2019-04-16T19:19:34.521Z"
                },
                {
                  "id": 171,
                  "name": "Lando Calrissian",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.523Z",
                  "updated_at": "2019-04-16T19:19:34.523Z"
                },
                {
                  "id": 172,
                  "name": "Jar Jar Binks",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.524Z",
                  "updated_at": "2019-04-16T19:19:34.524Z"
                },
                {
                  "id": 173,
                  "name": "Savage Opress",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.526Z",
                  "updated_at": "2019-04-16T19:19:34.526Z"
                },
                {
                  "id": 174,
                  "name": "Lando Calrissian",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.528Z",
                  "updated_at": "2019-04-16T19:19:34.528Z"
                },
                {
                  "id": 175,
                  "name": "Lyra Erso",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.529Z",
                  "updated_at": "2019-04-16T19:19:34.529Z"
                },
                {
                  "id": 176,
                  "name": "Ahsoka Tano",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.531Z",
                  "updated_at": "2019-04-16T19:19:34.531Z"
                },
                {
                  "id": 177,
                  "name": "Ki-Adi-Mundi",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.532Z",
                  "updated_at": "2019-04-16T19:19:34.532Z"
                },
                {
                  "id": 178,
                  "name": "Chewbacca",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.534Z",
                  "updated_at": "2019-04-16T19:19:34.534Z"
                },
                {
                  "id": 179,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.535Z",
                  "updated_at": "2019-04-16T19:19:34.535Z"
                },
                {
                  "id": 180,
                  "name": "Padme Amidala",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.537Z",
                  "updated_at": "2019-04-16T19:19:34.537Z"
                },
                {
                  "id": 181,
                  "name": "Qui-Gon Jinn",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.538Z",
                  "updated_at": "2019-04-16T19:19:34.538Z"
                },
                {
                  "id": 182,
                  "name": "Saw Gerrera",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.540Z",
                  "updated_at": "2019-04-16T19:19:34.540Z"
                },
                {
                  "id": 183,
                  "name": "Boba Fett",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.541Z",
                  "updated_at": "2019-04-16T19:19:34.541Z"
                },
                {
                  "id": 184,
                  "name": "Padme Amidala",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.543Z",
                  "updated_at": "2019-04-16T19:19:34.543Z"
                },
                {
                  "id": 185,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.544Z",
                  "updated_at": "2019-04-16T19:19:34.544Z"
                },
                {
                  "id": 186,
                  "name": "Leia Organa",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.546Z",
                  "updated_at": "2019-04-16T19:19:34.546Z"
                },
                {
                  "id": 187,
                  "name": "Jango Fett",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.547Z",
                  "updated_at": "2019-04-16T19:19:34.547Z"
                },
                {
                  "id": 188,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 16,
                  "created_at": "2019-04-16T19:19:34.551Z",
                  "updated_at": "2019-04-16T19:19:34.551Z"
                }
              ],
              "user": {
                "id": 18,
                "name": "Shane Mitchell",
                "email": "nannie@graham.org",
                "password_digest": "$2a$04$1PktQchKh8zUaH/6UMjqbuprC8nc3GpWSc/EmKk.wYhnRzH0JxNmm",
                "created_at": "2019-04-16T19:19:34.514Z",
                "updated_at": "2019-04-16T19:19:34.514Z"
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
              "title": "perferendis",
              "user_id": 19,
              "created_at": "2019-04-16T19:19:34.566Z",
              "updated_at": "2019-04-16T19:19:34.566Z",
              "items": [
                {
                  "id": 189,
                  "name": "Darth Sidious",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.568Z",
                  "updated_at": "2019-04-16T19:19:34.568Z"
                },
                {
                  "id": 190,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.570Z",
                  "updated_at": "2019-04-16T19:19:34.570Z"
                },
                {
                  "id": 191,
                  "name": "Darth Vader",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.571Z",
                  "updated_at": "2019-04-16T19:19:34.571Z"
                },
                {
                  "id": 192,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.573Z",
                  "updated_at": "2019-04-16T19:19:34.573Z"
                },
                {
                  "id": 193,
                  "name": "Borvo the Hutt",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.575Z",
                  "updated_at": "2019-04-16T19:19:34.575Z"
                },
                {
                  "id": 194,
                  "name": "Mace Windu",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.576Z",
                  "updated_at": "2019-04-16T19:19:34.576Z"
                },
                {
                  "id": 195,
                  "name": "Qui-Gon Jinn",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.578Z",
                  "updated_at": "2019-04-16T19:19:34.578Z"
                },
                {
                  "id": 196,
                  "name": "Yoda",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.579Z",
                  "updated_at": "2019-04-16T19:19:34.579Z"
                },
                {
                  "id": 197,
                  "name": "Kanan Jarrus",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.581Z",
                  "updated_at": "2019-04-16T19:19:34.581Z"
                },
                {
                  "id": 198,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.582Z",
                  "updated_at": "2019-04-16T19:19:34.582Z"
                },
                {
                  "id": 199,
                  "name": "Rose Tico",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.584Z",
                  "updated_at": "2019-04-16T19:19:34.584Z"
                },
                {
                  "id": 200,
                  "name": "Lyra Erso",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.586Z",
                  "updated_at": "2019-04-16T19:19:34.586Z"
                },
                {
                  "id": 201,
                  "name": "Kylo Ren",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.588Z",
                  "updated_at": "2019-04-16T19:19:34.588Z"
                },
                {
                  "id": 202,
                  "name": "Ezra Bridger",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.589Z",
                  "updated_at": "2019-04-16T19:19:34.589Z"
                },
                {
                  "id": 203,
                  "name": "Grand Moff Tarkin",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.591Z",
                  "updated_at": "2019-04-16T19:19:34.591Z"
                },
                {
                  "id": 204,
                  "name": "Chirrut Imwe",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.593Z",
                  "updated_at": "2019-04-16T19:19:34.593Z"
                },
                {
                  "id": 205,
                  "name": "Darth Vader",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.594Z",
                  "updated_at": "2019-04-16T19:19:34.594Z"
                },
                {
                  "id": 206,
                  "name": "Jar Jar Binks",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.596Z",
                  "updated_at": "2019-04-16T19:19:34.596Z"
                },
                {
                  "id": 207,
                  "name": "Finn",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.598Z",
                  "updated_at": "2019-04-16T19:19:34.598Z"
                },
                {
                  "id": 208,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 17,
                  "created_at": "2019-04-16T19:19:34.599Z",
                  "updated_at": "2019-04-16T19:19:34.599Z"
                },
                {
                  "id": null,
                  "name": null,
                  "done": false,
                  "todo_id": 17,
                  "created_at": null,
                  "updated_at": null
                }
              ],
              "user": {
                "id": 19,
                "name": "Meaghan Gutmann",
                "email": "dennishuel@walkerlynch.io",
                "password_digest": "$2a$04$GEiv.cROCd9IDgRgefYvaeL7EGWl7AtrjLVApuP3ugPpCxhiWyiWO",
                "created_at": "2019-04-16T19:19:34.564Z",
                "updated_at": "2019-04-16T19:19:34.564Z"
              }
            }

### Put todos/:todo_id/items/:id [PUT /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `18` (number, required)
    + id: `209` (number, required)

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/todos/18/items/209`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 204

+ Request updates the item
**PUT**&nbsp;&nbsp;`/todos/19/items/229`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 204

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
                "title": "et",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.826Z",
                "updated_at": "2019-04-16T19:19:34.826Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 24,
                "title": "veniam",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.828Z",
                "updated_at": "2019-04-16T19:19:34.828Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 25,
                "title": "consequatur",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.830Z",
                "updated_at": "2019-04-16T19:19:34.830Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 26,
                "title": "fuga",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.831Z",
                "updated_at": "2019-04-16T19:19:34.831Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 27,
                "title": "quaerat",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.833Z",
                "updated_at": "2019-04-16T19:19:34.833Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 28,
                "title": "enim",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.834Z",
                "updated_at": "2019-04-16T19:19:34.834Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 29,
                "title": "expedita",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.836Z",
                "updated_at": "2019-04-16T19:19:34.836Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 30,
                "title": "repellat",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.837Z",
                "updated_at": "2019-04-16T19:19:34.837Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 31,
                "title": "dolor",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.839Z",
                "updated_at": "2019-04-16T19:19:34.839Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
                }
              },
              {
                "id": 32,
                "title": "qui",
                "user_id": 25,
                "created_at": "2019-04-16T19:19:34.840Z",
                "updated_at": "2019-04-16T19:19:34.840Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Santos Carter",
                  "email": "gordonfritsch@hermistonsanford.org",
                  "password_digest": "$2a$04$hSNq9uVQs3w0qoZt0DpQ0OS6nJ8x8NbuzkQqig8nZsU3BSW2/wgU2",
                  "created_at": "2019-04-16T19:19:34.824Z",
                  "updated_at": "2019-04-16T19:19:34.824Z"
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
                "title": "inventore",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.863Z",
                "updated_at": "2019-04-16T19:19:34.863Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 34,
                "title": "qui",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.864Z",
                "updated_at": "2019-04-16T19:19:34.864Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 35,
                "title": "est",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.866Z",
                "updated_at": "2019-04-16T19:19:34.866Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 36,
                "title": "doloribus",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.867Z",
                "updated_at": "2019-04-16T19:19:34.867Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 37,
                "title": "sed",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.869Z",
                "updated_at": "2019-04-16T19:19:34.869Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 38,
                "title": "unde",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.871Z",
                "updated_at": "2019-04-16T19:19:34.871Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 39,
                "title": "tempora",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.872Z",
                "updated_at": "2019-04-16T19:19:34.872Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 40,
                "title": "ipsam",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.874Z",
                "updated_at": "2019-04-16T19:19:34.874Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 41,
                "title": "ea",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.875Z",
                "updated_at": "2019-04-16T19:19:34.875Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
                }
              },
              {
                "id": 42,
                "title": "veritatis",
                "user_id": 26,
                "created_at": "2019-04-16T19:19:34.877Z",
                "updated_at": "2019-04-16T19:19:34.877Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Carole Hickle IV",
                  "email": "geri@ward.name",
                  "password_digest": "$2a$04$4pGBPBHGkb3kFrwr.9fcqetChWLBx8uxbIqx8YXuyg3RiTyGnhZxa",
                  "created_at": "2019-04-16T19:19:34.861Z",
                  "updated_at": "2019-04-16T19:19:34.861Z"
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
              "title": "ut",
              "user_id": 27,
              "created_at": "2019-04-16T19:19:34.897Z",
              "updated_at": "2019-04-16T19:19:34.897Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Gary Stoltenberg",
                "email": "chungmarks@jaskolskigoodwin.net",
                "password_digest": "$2a$04$GEek89MsuIV30a7VPGv4zObqsEHMC0pOSFPb3Scb.orvR0UoGLTUe",
                "created_at": "2019-04-16T19:19:34.895Z",
                "updated_at": "2019-04-16T19:19:34.895Z"
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
              "title": "ipsa",
              "user_id": 28,
              "created_at": "2019-04-16T19:19:34.921Z",
              "updated_at": "2019-04-16T19:19:34.921Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Larry Hamill",
                "email": "tammie@wolf.com",
                "password_digest": "$2a$04$xG9YTwNjDsVtoJTUv4UrG.OUFfP.k8JMrCj98qmmmgc7inEQ.8dL2",
                "created_at": "2019-04-16T19:19:34.919Z",
                "updated_at": "2019-04-16T19:19:34.919Z"
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
              "created_at": "2019-04-16T19:19:35.014Z",
              "updated_at": "2019-04-16T19:19:35.014Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Jamey Pouros",
                "email": "ricky@hauck.io",
                "password_digest": "$2a$04$aBPpk1Vgft6skOvTWONwPuzAnNEONHtxKkGhfs6iTbYVXqTT1dD32",
                "created_at": "2019-04-16T19:19:34.995Z",
                "updated_at": "2019-04-16T19:19:34.995Z"
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
              "created_at": "2019-04-16T19:19:35.039Z",
              "updated_at": "2019-04-16T19:19:35.039Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Karyn Beahan Jr.",
                "email": "chet@lang.biz",
                "password_digest": "$2a$04$z0ykKcdtEiF.o.CNIX7cI.YpbcbGT96X580CZQfyTwe6eyCMDFvq6",
                "created_at": "2019-04-16T19:19:35.020Z",
                "updated_at": "2019-04-16T19:19:35.020Z"
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
                "name": "Kyla Roob",
                "email": "tajohnston@langosh.biz",
                "password_digest": "$2a$04$Db8KSiYRle6hpoSE0.S3tud8JzmUyIdIfwZaVqregUYreItHZ9ViS",
                "created_at": "2019-04-16T19:19:35.045Z",
                "updated_at": "2019-04-16T19:19:35.045Z"
              }
            }

### Put todos/:id [PUT /todos/{id}]

+ Parameters
    + id: `115` (number, required)

+ Request updates the record
**PUT**&nbsp;&nbsp;`/todos/115`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Shopping"
            }

+ Response 204

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/todos/125`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Shopping"
            }

+ Response 204

### Delete todos/:id [DELETE /todos/{id}]

+ Parameters
    + id: `135` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/135`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204
