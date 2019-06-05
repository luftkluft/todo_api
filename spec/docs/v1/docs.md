

# Group Todo_API


## Users [/api/v1/auth/login]


### Post /api/v1/auth/login [POST /api/v1/auth/login]


+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/api/v1/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "blairdenesik@skileshilll.org",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTk3NzkxMTZ9.V1B1s8OcgaSJ2KotB1NTdAkJvtWGk3tenowB5UQG8ko"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/api/v1/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "oleneweber@lowe.info",
              "password": "C7ZfUpHiH"
            }

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Invalid credentials"
            }

### Post /api/v1/signup [POST /api/v1/signup]


+ Request creates a new user
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Dr. Vinnie Olson",
              "email": "grover@windler.net",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTU5Nzc5MTE3fQ.d3PEADBsIMdmPNHT-92NyffkL8WMLChYuZAFEq0WUvE"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Theron Kohler",
              "email": "raulbauch@bodesipes.net",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU5Nzc5MTE3fQ.DCFjRvdLR70xt8L058mKN1bGRoTxM4B6lYLOrjbD8A4"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Kris Bergstrom",
              "email": "genaschimmel@hickle.io",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU5Nzc5MTE3fQ.zRVT92wi2kjDIu4hXxUa_cAWVYEaIVEO8ACuND1v9s0"
            }

+ Request does not create a new user
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account could not be created, check input data!"
            }

## Comments [/api/v1/todos/:todo_id/items/:item_id/comments/:id]


### Get /api/v1/todos/:todo_id/items/:item_id/comments [GET /api/v1/todos/{todo_id}/items/{item_id}/comments]

+ Parameters
    + todo_id: `1` (number, required)
    + item_id: `1` (number, required)

+ Request when success
**GET**&nbsp;&nbsp;`/api/v1/todos/1/items/1/comments`

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
                "body": "Finntest",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-06-04T23:58:36.254Z",
                "updated_at": "2019-06-04T23:58:36.254Z",
                "item": {
                  "id": 1,
                  "name": "Admiral Ackbar",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-06-11T23:58:36.242Z",
                  "created_at": "2019-06-04T23:58:36.245Z",
                  "updated_at": "2019-06-04T23:58:36.245Z"
                }
              }
            ]

### Get /api/v1/todos/:todo_id/items/:item_id/comments/:id [GET /api/v1/todos/{todo_id}/items/{item_id}/comments/{id}]

+ Parameters
    + todo_id: `2` (number, required)
    + item_id: `2` (number, required)
    + id: `2` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/todos/2/items/2/comments/2`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "body": "Luke Skywalkertest",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-06-04T23:58:36.290Z",
              "updated_at": "2019-06-04T23:58:36.290Z",
              "item": {
                "id": 2,
                "name": "Ki-Adi-Mundi",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-06-11T23:58:36.287Z",
                "created_at": "2019-06-04T23:58:36.288Z",
                "updated_at": "2019-06-04T23:58:36.288Z"
              }
            }

### Post /api/v1/todos/:todo_id/items/:item_id/comments [POST /api/v1/todos/{todo_id}/items/{item_id}/comments]

+ Parameters
    + todo_id: `3` (number, required)
    + item_id: `3` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/v1/todos/3/items/3/comments`

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
              "created_at": "2019-06-04T23:58:36.315Z",
              "updated_at": "2019-06-04T23:58:36.315Z",
              "item": {
                "id": 3,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 3,
                "deadline": "2019-06-11T23:58:36.306Z",
                "created_at": "2019-06-04T23:58:36.307Z",
                "updated_at": "2019-06-04T23:58:36.307Z"
              }
            }

+ Request returns status code 422
**POST**&nbsp;&nbsp;`/api/v1/todos/4/items/4/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Comment not be created, check input data!"
            }

### Put /api/v1/todos/:todo_id/items/:item_id/comments/:id [PUT /api/v1/todos/{todo_id}/items/{item_id}/comments/{id}]

+ Parameters
    + todo_id: `5` (number, required)
    + item_id: `5` (number, required)
    + id: `6` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/api/v1/todos/5/items/5/comments/6`

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
              "created_at": "2019-06-04T23:58:36.344Z",
              "updated_at": "2019-06-04T23:58:36.351Z",
              "item": {
                "id": 5,
                "name": "Bendu",
                "done": false,
                "todo_id": 5,
                "deadline": "2019-06-11T23:58:36.342Z",
                "created_at": "2019-06-04T23:58:36.343Z",
                "updated_at": "2019-06-04T23:58:36.343Z"
              }
            }

+ Request updates the item
**PUT**&nbsp;&nbsp;`/api/v1/todos/6/items/6/comments/7`

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
              "created_at": "2019-06-04T23:58:36.363Z",
              "updated_at": "2019-06-04T23:58:36.369Z",
              "item": {
                "id": 6,
                "name": "Watto",
                "done": false,
                "todo_id": 6,
                "deadline": "2019-06-11T23:58:36.360Z",
                "created_at": "2019-06-04T23:58:36.361Z",
                "updated_at": "2019-06-04T23:58:36.361Z"
              }
            }

### Delete /api/v1/todos/:todo_id/items/:item_id/comments/:id [DELETE /api/v1/todos/{todo_id}/items/{item_id}/comments/{id}]

+ Parameters
    + todo_id: `7` (number, required)
    + item_id: `7` (number, required)
    + id: `8` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/v1/todos/7/items/7/comments/8`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204

## Items [/api/v1/todos/:todo_id/items/:id]


### Get /api/v1/todos/:todo_id/items [GET /api/v1/todos/{todo_id}/items]

+ Parameters
    + todo_id: `8` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/todos/8/items`

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
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.407Z",
                "created_at": "2019-06-04T23:58:36.408Z",
                "updated_at": "2019-06-04T23:58:36.408Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 9,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.409Z",
                "created_at": "2019-06-04T23:58:36.410Z",
                "updated_at": "2019-06-04T23:58:36.410Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 10,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.411Z",
                "created_at": "2019-06-04T23:58:36.412Z",
                "updated_at": "2019-06-04T23:58:36.412Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 11,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.413Z",
                "created_at": "2019-06-04T23:58:36.413Z",
                "updated_at": "2019-06-04T23:58:36.413Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 12,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.414Z",
                "created_at": "2019-06-04T23:58:36.415Z",
                "updated_at": "2019-06-04T23:58:36.415Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 13,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.416Z",
                "created_at": "2019-06-04T23:58:36.417Z",
                "updated_at": "2019-06-04T23:58:36.417Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 14,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.418Z",
                "created_at": "2019-06-04T23:58:36.419Z",
                "updated_at": "2019-06-04T23:58:36.419Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 15,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.420Z",
                "created_at": "2019-06-04T23:58:36.421Z",
                "updated_at": "2019-06-04T23:58:36.421Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 16,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.422Z",
                "created_at": "2019-06-04T23:58:36.423Z",
                "updated_at": "2019-06-04T23:58:36.423Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 17,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.424Z",
                "created_at": "2019-06-04T23:58:36.425Z",
                "updated_at": "2019-06-04T23:58:36.425Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 18,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.426Z",
                "created_at": "2019-06-04T23:58:36.427Z",
                "updated_at": "2019-06-04T23:58:36.427Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 19,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.427Z",
                "created_at": "2019-06-04T23:58:36.428Z",
                "updated_at": "2019-06-04T23:58:36.428Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 20,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.429Z",
                "created_at": "2019-06-04T23:58:36.430Z",
                "updated_at": "2019-06-04T23:58:36.430Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 21,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.431Z",
                "created_at": "2019-06-04T23:58:36.432Z",
                "updated_at": "2019-06-04T23:58:36.432Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 22,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.433Z",
                "created_at": "2019-06-04T23:58:36.434Z",
                "updated_at": "2019-06-04T23:58:36.434Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 23,
                "name": "General Hux",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.435Z",
                "created_at": "2019-06-04T23:58:36.436Z",
                "updated_at": "2019-06-04T23:58:36.436Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 24,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.436Z",
                "created_at": "2019-06-04T23:58:36.437Z",
                "updated_at": "2019-06-04T23:58:36.437Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 25,
                "name": "Bendu",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.438Z",
                "created_at": "2019-06-04T23:58:36.439Z",
                "updated_at": "2019-06-04T23:58:36.439Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 26,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.440Z",
                "created_at": "2019-06-04T23:58:36.441Z",
                "updated_at": "2019-06-04T23:58:36.441Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              },
              {
                "id": 27,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-11T23:58:36.441Z",
                "created_at": "2019-06-04T23:58:36.442Z",
                "updated_at": "2019-06-04T23:58:36.442Z",
                "todo": {
                  "id": 8,
                  "title": "nihil",
                  "user_id": 10,
                  "created_at": "2019-06-04T23:58:36.405Z",
                  "updated_at": "2019-06-04T23:58:36.405Z"
                }
              }
            ]

+ Request returns all todo items
**GET**&nbsp;&nbsp;`/api/v1/todos/9/items`

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
                "name": "Jango Fett",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.465Z",
                "created_at": "2019-06-04T23:58:36.466Z",
                "updated_at": "2019-06-04T23:58:36.466Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 29,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.467Z",
                "created_at": "2019-06-04T23:58:36.468Z",
                "updated_at": "2019-06-04T23:58:36.468Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 30,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.469Z",
                "created_at": "2019-06-04T23:58:36.470Z",
                "updated_at": "2019-06-04T23:58:36.470Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 31,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.471Z",
                "created_at": "2019-06-04T23:58:36.472Z",
                "updated_at": "2019-06-04T23:58:36.472Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 32,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.473Z",
                "created_at": "2019-06-04T23:58:36.473Z",
                "updated_at": "2019-06-04T23:58:36.473Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 33,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.474Z",
                "created_at": "2019-06-04T23:58:36.475Z",
                "updated_at": "2019-06-04T23:58:36.475Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 34,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.476Z",
                "created_at": "2019-06-04T23:58:36.477Z",
                "updated_at": "2019-06-04T23:58:36.477Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 35,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.478Z",
                "created_at": "2019-06-04T23:58:36.478Z",
                "updated_at": "2019-06-04T23:58:36.478Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 36,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.479Z",
                "created_at": "2019-06-04T23:58:36.480Z",
                "updated_at": "2019-06-04T23:58:36.480Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 37,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.481Z",
                "created_at": "2019-06-04T23:58:36.482Z",
                "updated_at": "2019-06-04T23:58:36.482Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 38,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.482Z",
                "created_at": "2019-06-04T23:58:36.483Z",
                "updated_at": "2019-06-04T23:58:36.483Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 39,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.484Z",
                "created_at": "2019-06-04T23:58:36.485Z",
                "updated_at": "2019-06-04T23:58:36.485Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 40,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.486Z",
                "created_at": "2019-06-04T23:58:36.486Z",
                "updated_at": "2019-06-04T23:58:36.486Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 41,
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.487Z",
                "created_at": "2019-06-04T23:58:36.488Z",
                "updated_at": "2019-06-04T23:58:36.488Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 42,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.489Z",
                "created_at": "2019-06-04T23:58:36.490Z",
                "updated_at": "2019-06-04T23:58:36.490Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 43,
                "name": "Yoda",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.491Z",
                "created_at": "2019-06-04T23:58:36.492Z",
                "updated_at": "2019-06-04T23:58:36.492Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 44,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.492Z",
                "created_at": "2019-06-04T23:58:36.493Z",
                "updated_at": "2019-06-04T23:58:36.493Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 45,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.494Z",
                "created_at": "2019-06-04T23:58:36.495Z",
                "updated_at": "2019-06-04T23:58:36.495Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 46,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.496Z",
                "created_at": "2019-06-04T23:58:36.496Z",
                "updated_at": "2019-06-04T23:58:36.496Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              },
              {
                "id": 47,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-11T23:58:36.497Z",
                "created_at": "2019-06-04T23:58:36.498Z",
                "updated_at": "2019-06-04T23:58:36.498Z",
                "todo": {
                  "id": 9,
                  "title": "quis",
                  "user_id": 11,
                  "created_at": "2019-06-04T23:58:36.464Z",
                  "updated_at": "2019-06-04T23:58:36.464Z"
                }
              }
            ]

+ Request returns status code 422
**GET**&nbsp;&nbsp;`/api/v1/todos/0/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Todo not found!"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/api/v1/todos/0/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Todo not found!"
            }

### Get /api/v1/todos/:todo_id/items/:id [GET /api/v1/todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `12` (number, required)
    + id: `88` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/todos/12/items/88`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 88,
              "name": "Padme Amidala",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-06-11T23:58:36.608Z",
              "created_at": "2019-06-04T23:58:36.609Z",
              "updated_at": "2019-06-04T23:58:36.609Z",
              "todo": {
                "id": 12,
                "title": "modi",
                "user_id": 14,
                "created_at": "2019-06-04T23:58:36.607Z",
                "updated_at": "2019-06-04T23:58:36.607Z"
              }
            }

+ Request returns the item
**GET**&nbsp;&nbsp;`/api/v1/todos/13/items/108`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 108,
              "name": "Saw Gerrera",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-06-11T23:58:36.654Z",
              "created_at": "2019-06-04T23:58:36.655Z",
              "updated_at": "2019-06-04T23:58:36.655Z",
              "todo": {
                "id": 13,
                "title": "omnis",
                "user_id": 15,
                "created_at": "2019-06-04T23:58:36.653Z",
                "updated_at": "2019-06-04T23:58:36.653Z"
              }
            }

+ Request returns status code 422
**GET**&nbsp;&nbsp;`/api/v1/todos/14/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Item not found!"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/api/v1/todos/15/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Item not found!"
            }

### Post /api/v1/todos/:todo_id/items [POST /api/v1/todos/{todo_id}/items]

+ Parameters
    + todo_id: `16` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/v1/todos/16/items`

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
              "created_at": "2019-06-04T23:58:36.832Z",
              "updated_at": "2019-06-04T23:58:36.832Z",
              "todo": {
                "id": 16,
                "title": "voluptatem",
                "user_id": 18,
                "created_at": "2019-06-04T23:58:36.794Z",
                "updated_at": "2019-06-04T23:58:36.794Z"
              }
            }

+ Request returns status code 422
**POST**&nbsp;&nbsp;`/api/v1/todos/17/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Item not be created, check input data!"
            }

### Put /api/v1/todos/:todo_id/items/:id [PUT /api/v1/todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `18` (number, required)
    + id: `209` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/api/v1/todos/18/items/209`

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
              "deadline": "2019-06-11T23:58:36.882Z",
              "created_at": "2019-06-04T23:58:36.883Z",
              "updated_at": "2019-06-04T23:58:36.919Z",
              "todo": {
                "id": 18,
                "title": "ab",
                "user_id": 20,
                "created_at": "2019-06-04T23:58:36.881Z",
                "updated_at": "2019-06-04T23:58:36.881Z"
              }
            }

+ Request updates the item
**PUT**&nbsp;&nbsp;`/api/v1/todos/19/items/229`

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
              "deadline": "2019-06-11T23:58:36.929Z",
              "created_at": "2019-06-04T23:58:36.930Z",
              "updated_at": "2019-06-04T23:58:36.968Z",
              "todo": {
                "id": 19,
                "title": "quo",
                "user_id": 21,
                "created_at": "2019-06-04T23:58:36.927Z",
                "updated_at": "2019-06-04T23:58:36.927Z"
              }
            }

+ Request returns status code 422
**PUT**&nbsp;&nbsp;`/api/v1/todos/20/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Item not found!"
            }

+ Request returns a not found message
**PUT**&nbsp;&nbsp;`/api/v1/todos/21/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Item not found!"
            }

### Delete /api/v1/todos/:todo_id/items/:id [DELETE /api/v1/todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `22` (number, required)
    + id: `289` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/v1/todos/22/items/289`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204

## Todos [/api/v1/todos/:id]


### Get /api/v1/todos [GET /api/v1/todos]


+ Request returns todos
**GET**&nbsp;&nbsp;`/api/v1/todos`

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
                "title": "mollitia",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.118Z",
                "updated_at": "2019-06-04T23:58:37.118Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 24,
                "title": "modi",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.119Z",
                "updated_at": "2019-06-04T23:58:37.119Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 25,
                "title": "quo",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.121Z",
                "updated_at": "2019-06-04T23:58:37.121Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 26,
                "title": "vel",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.122Z",
                "updated_at": "2019-06-04T23:58:37.122Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 27,
                "title": "quas",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.124Z",
                "updated_at": "2019-06-04T23:58:37.124Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 28,
                "title": "laborum",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.125Z",
                "updated_at": "2019-06-04T23:58:37.125Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 29,
                "title": "explicabo",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.127Z",
                "updated_at": "2019-06-04T23:58:37.127Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 30,
                "title": "deleniti",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.128Z",
                "updated_at": "2019-06-04T23:58:37.128Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 31,
                "title": "amet",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.130Z",
                "updated_at": "2019-06-04T23:58:37.130Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              },
              {
                "id": 32,
                "title": "doloribus",
                "user_id": 25,
                "created_at": "2019-06-04T23:58:37.131Z",
                "updated_at": "2019-06-04T23:58:37.131Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Mrs. Julee Pfeffer",
                  "email": "rosario@abernathyfay.biz",
                  "password_digest": "$2a$04$ikBwW.14VP9loS4O55g1t.7yhMdBVveiWOK9g3c53CFtX/1JuL1k6",
                  "created_at": "2019-06-04T23:58:37.116Z",
                  "updated_at": "2019-06-04T23:58:37.116Z"
                }
              }
            ]

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/todos`

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
                "title": "sunt",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.155Z",
                "updated_at": "2019-06-04T23:58:37.155Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 34,
                "title": "architecto",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.156Z",
                "updated_at": "2019-06-04T23:58:37.156Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 35,
                "title": "expedita",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.158Z",
                "updated_at": "2019-06-04T23:58:37.158Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 36,
                "title": "eos",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.160Z",
                "updated_at": "2019-06-04T23:58:37.160Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 37,
                "title": "rerum",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.162Z",
                "updated_at": "2019-06-04T23:58:37.162Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 38,
                "title": "quaerat",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.163Z",
                "updated_at": "2019-06-04T23:58:37.163Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 39,
                "title": "repellendus",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.165Z",
                "updated_at": "2019-06-04T23:58:37.165Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 40,
                "title": "porro",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.167Z",
                "updated_at": "2019-06-04T23:58:37.167Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 41,
                "title": "et",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.169Z",
                "updated_at": "2019-06-04T23:58:37.169Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              },
              {
                "id": 42,
                "title": "ab",
                "user_id": 26,
                "created_at": "2019-06-04T23:58:37.170Z",
                "updated_at": "2019-06-04T23:58:37.170Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ressie Bode",
                  "email": "milohermann@waters.org",
                  "password_digest": "$2a$04$coL7EdLxOUm/avVWz1i6su03csqhSryLWlLNGfKaM6Jkv6Q5qa9gi",
                  "created_at": "2019-06-04T23:58:37.153Z",
                  "updated_at": "2019-06-04T23:58:37.153Z"
                }
              }
            ]

### Get /api/v1/todos/:id [GET /api/v1/todos/{id}]

+ Parameters
    + id: `43` (number, required)

+ Request returns the todo
**GET**&nbsp;&nbsp;`/api/v1/todos/43`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 43,
              "title": "et",
              "user_id": 27,
              "created_at": "2019-06-04T23:58:37.191Z",
              "updated_at": "2019-06-04T23:58:37.191Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Eneida Johns DVM",
                "email": "anjahammes@wintheiser.com",
                "password_digest": "$2a$04$qbZgDkeqQoeGZ9vkd0qH3.aPJv5TUAJ5Dq/jj/o.zkIpSZ18LYQm6",
                "created_at": "2019-06-04T23:58:37.189Z",
                "updated_at": "2019-06-04T23:58:37.189Z"
              }
            }

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/todos/53`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 53,
              "title": "omnis",
              "user_id": 28,
              "created_at": "2019-06-04T23:58:37.216Z",
              "updated_at": "2019-06-04T23:58:37.216Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Maryrose Veum",
                "email": "lizabeththiel@koepp.org",
                "password_digest": "$2a$04$uWLkLjbmQf0MaIgNepy9ie3ngK0BO5Z6PpI9Oh33uXduKQGfz.i0a",
                "created_at": "2019-06-04T23:58:37.214Z",
                "updated_at": "2019-06-04T23:58:37.214Z"
              }
            }

+ Request returns status code 422
**GET**&nbsp;&nbsp;`/api/v1/todos/1000`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Todo not found!"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/api/v1/todos/1000`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Todo not found!"
            }

### Post /api/v1/todos [POST /api/v1/todos]


+ Request creates a todo
**POST**&nbsp;&nbsp;`/api/v1/todos`

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
              "created_at": "2019-06-04T23:58:37.312Z",
              "updated_at": "2019-06-04T23:58:37.312Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Riva Harvey MD",
                "email": "paz@watsica.com",
                "password_digest": "$2a$04$m0w.oPLLG.dB1UIjM1xMeeUxM809S8cpctOQ3q9lHnFkwffyAAkti",
                "created_at": "2019-06-04T23:58:37.293Z",
                "updated_at": "2019-06-04T23:58:37.293Z"
              }
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/v1/todos`

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
              "created_at": "2019-06-04T23:58:37.336Z",
              "updated_at": "2019-06-04T23:58:37.336Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Danyel Williamson",
                "email": "laurettabecker@king.name",
                "password_digest": "$2a$04$Mr7PB2itrY7zkgpfmxGwferazQ9M7e1/PbxelPhLFQgf6JxWNdCxu",
                "created_at": "2019-06-04T23:58:37.318Z",
                "updated_at": "2019-06-04T23:58:37.318Z"
              }
            }

+ Request returns status code 422
**POST**&nbsp;&nbsp;`/api/v1/todos`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": null
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Todo not be created, check input data!"
            }

### Put /api/v1/todos/:id [PUT /api/v1/todos/{id}]

+ Parameters
    + id: `115` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/api/v1/todos/115`

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
              "created_at": "2019-06-04T23:58:37.367Z",
              "updated_at": "2019-06-04T23:58:37.389Z",
              "items": [
            
              ],
              "user": {
                "id": 34,
                "name": "Lory Greenfelder",
                "email": "gladywisoky@kshlerinkirlin.org",
                "password_digest": "$2a$04$7Vpuvmv.eVXSQFKZWnlqQ.TBxwkLWdZ.1UeFfwIOLR9kAyoOrPaTa",
                "created_at": "2019-06-04T23:58:37.365Z",
                "updated_at": "2019-06-04T23:58:37.365Z"
              }
            }

### Delete /api/v1/todos/:id [DELETE /api/v1/todos/{id}]

+ Parameters
    + id: `125` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/v1/todos/125`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204
