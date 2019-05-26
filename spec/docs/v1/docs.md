

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
              "email": "eric@blandagreenholt.com",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTg5NjAxMzJ9.dtBJlU3gVmLsKAvsjP3iOIQ6oCvRpZLrd1KTgSsDu9o"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/api/v1/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "gaylord@keler.name",
              "password": "C4N32jWj2wPuO00d"
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
              "name": "Mr. Ok Langosh",
              "email": "norberto@sporer.biz",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTU4OTYwMTM0fQ.KsNwPdN7TcitsWPP4_ng3pGAjBoabAy0NGFPfq1UHEc"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Johnny Rice",
              "email": "haywood@hyattlockman.net",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU4OTYwMTM0fQ._KV7JbtJcZwEIsl_3-PbNDZm2UtK9ECDpJGpBsQAp0Q"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Wesley Carroll DDS",
              "email": "alexpaucek@trantowschneider.com",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU4OTYwMTM0fQ.wbCOuEThDo_-2kCLvJ_d9S2c9NP8qLszVHsIig8FoYQ"
            }

+ Request does not create a new user
**POST**&nbsp;&nbsp;`/api/v1/signup`

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
                "body": "Luke Skywalkertest",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-05-26T12:28:52.850Z",
                "updated_at": "2019-05-26T12:28:52.850Z",
                "item": {
                  "id": 1,
                  "name": "Sabine Wren",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-06-02T12:28:52.839Z",
                  "created_at": "2019-05-26T12:28:52.842Z",
                  "updated_at": "2019-05-26T12:28:52.842Z"
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
              "body": "Asajj Ventresstest",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-05-26T12:28:52.886Z",
              "updated_at": "2019-05-26T12:28:52.886Z",
              "item": {
                "id": 2,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-06-02T12:28:52.883Z",
                "created_at": "2019-05-26T12:28:52.884Z",
                "updated_at": "2019-05-26T12:28:52.884Z"
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
              "created_at": "2019-05-26T12:28:52.911Z",
              "updated_at": "2019-05-26T12:28:52.911Z",
              "item": {
                "id": 3,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 3,
                "deadline": "2019-06-02T12:28:52.902Z",
                "created_at": "2019-05-26T12:28:52.903Z",
                "updated_at": "2019-05-26T12:28:52.903Z"
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
              "message": "#<ActiveModel::Errors:0x0000562398e65908>"
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
              "created_at": "2019-05-26T12:28:52.940Z",
              "updated_at": "2019-05-26T12:28:52.947Z",
              "item": {
                "id": 5,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 5,
                "deadline": "2019-06-02T12:28:52.937Z",
                "created_at": "2019-05-26T12:28:52.938Z",
                "updated_at": "2019-05-26T12:28:52.938Z"
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
              "created_at": "2019-05-26T12:28:52.959Z",
              "updated_at": "2019-05-26T12:28:52.965Z",
              "item": {
                "id": 6,
                "name": "Rey",
                "done": false,
                "todo_id": 6,
                "deadline": "2019-06-02T12:28:52.956Z",
                "created_at": "2019-05-26T12:28:52.957Z",
                "updated_at": "2019-05-26T12:28:52.957Z"
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
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:52.991Z",
                "created_at": "2019-05-26T12:28:52.992Z",
                "updated_at": "2019-05-26T12:28:52.992Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 9,
                "name": "Han Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:52.993Z",
                "created_at": "2019-05-26T12:28:52.994Z",
                "updated_at": "2019-05-26T12:28:52.994Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 10,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:52.995Z",
                "created_at": "2019-05-26T12:28:52.996Z",
                "updated_at": "2019-05-26T12:28:52.996Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 11,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:52.997Z",
                "created_at": "2019-05-26T12:28:52.997Z",
                "updated_at": "2019-05-26T12:28:52.997Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 12,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:52.998Z",
                "created_at": "2019-05-26T12:28:52.999Z",
                "updated_at": "2019-05-26T12:28:52.999Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 13,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.000Z",
                "created_at": "2019-05-26T12:28:53.001Z",
                "updated_at": "2019-05-26T12:28:53.001Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 14,
                "name": "Wedge Antilles",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.002Z",
                "created_at": "2019-05-26T12:28:53.003Z",
                "updated_at": "2019-05-26T12:28:53.003Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 15,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.004Z",
                "created_at": "2019-05-26T12:28:53.005Z",
                "updated_at": "2019-05-26T12:28:53.005Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 16,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.006Z",
                "created_at": "2019-05-26T12:28:53.007Z",
                "updated_at": "2019-05-26T12:28:53.007Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 17,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.008Z",
                "created_at": "2019-05-26T12:28:53.008Z",
                "updated_at": "2019-05-26T12:28:53.008Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 18,
                "name": "Sebulba",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.009Z",
                "created_at": "2019-05-26T12:28:53.010Z",
                "updated_at": "2019-05-26T12:28:53.010Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 19,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.011Z",
                "created_at": "2019-05-26T12:28:53.012Z",
                "updated_at": "2019-05-26T12:28:53.012Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 20,
                "name": "Greedo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.013Z",
                "created_at": "2019-05-26T12:28:53.013Z",
                "updated_at": "2019-05-26T12:28:53.013Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 21,
                "name": "Bendu",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.014Z",
                "created_at": "2019-05-26T12:28:53.015Z",
                "updated_at": "2019-05-26T12:28:53.015Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 22,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.016Z",
                "created_at": "2019-05-26T12:28:53.017Z",
                "updated_at": "2019-05-26T12:28:53.017Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 23,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.018Z",
                "created_at": "2019-05-26T12:28:53.018Z",
                "updated_at": "2019-05-26T12:28:53.018Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 24,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.019Z",
                "created_at": "2019-05-26T12:28:53.020Z",
                "updated_at": "2019-05-26T12:28:53.020Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 25,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.021Z",
                "created_at": "2019-05-26T12:28:53.022Z",
                "updated_at": "2019-05-26T12:28:53.022Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 26,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.023Z",
                "created_at": "2019-05-26T12:28:53.023Z",
                "updated_at": "2019-05-26T12:28:53.023Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
                }
              },
              {
                "id": 27,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T12:28:53.024Z",
                "created_at": "2019-05-26T12:28:53.025Z",
                "updated_at": "2019-05-26T12:28:53.025Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-05-26T12:28:52.990Z",
                  "updated_at": "2019-05-26T12:28:52.990Z"
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
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.059Z",
                "created_at": "2019-05-26T12:28:53.060Z",
                "updated_at": "2019-05-26T12:28:53.060Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 29,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.061Z",
                "created_at": "2019-05-26T12:28:53.062Z",
                "updated_at": "2019-05-26T12:28:53.062Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 30,
                "name": "General Hux",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.063Z",
                "created_at": "2019-05-26T12:28:53.064Z",
                "updated_at": "2019-05-26T12:28:53.064Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 31,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.065Z",
                "created_at": "2019-05-26T12:28:53.066Z",
                "updated_at": "2019-05-26T12:28:53.066Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 32,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.067Z",
                "created_at": "2019-05-26T12:28:53.068Z",
                "updated_at": "2019-05-26T12:28:53.068Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 33,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.069Z",
                "created_at": "2019-05-26T12:28:53.070Z",
                "updated_at": "2019-05-26T12:28:53.070Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 34,
                "name": "Wedge Antilles",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.071Z",
                "created_at": "2019-05-26T12:28:53.071Z",
                "updated_at": "2019-05-26T12:28:53.071Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 35,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.072Z",
                "created_at": "2019-05-26T12:28:53.073Z",
                "updated_at": "2019-05-26T12:28:53.073Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 36,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.074Z",
                "created_at": "2019-05-26T12:28:53.075Z",
                "updated_at": "2019-05-26T12:28:53.075Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 37,
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.076Z",
                "created_at": "2019-05-26T12:28:53.077Z",
                "updated_at": "2019-05-26T12:28:53.077Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 38,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.078Z",
                "created_at": "2019-05-26T12:28:53.079Z",
                "updated_at": "2019-05-26T12:28:53.079Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 39,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.080Z",
                "created_at": "2019-05-26T12:28:53.080Z",
                "updated_at": "2019-05-26T12:28:53.080Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 40,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.081Z",
                "created_at": "2019-05-26T12:28:53.082Z",
                "updated_at": "2019-05-26T12:28:53.082Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 41,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.083Z",
                "created_at": "2019-05-26T12:28:53.084Z",
                "updated_at": "2019-05-26T12:28:53.084Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 42,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.085Z",
                "created_at": "2019-05-26T12:28:53.086Z",
                "updated_at": "2019-05-26T12:28:53.086Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 43,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.086Z",
                "created_at": "2019-05-26T12:28:53.087Z",
                "updated_at": "2019-05-26T12:28:53.087Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 44,
                "name": "Rey",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.088Z",
                "created_at": "2019-05-26T12:28:53.089Z",
                "updated_at": "2019-05-26T12:28:53.089Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 45,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.090Z",
                "created_at": "2019-05-26T12:28:53.091Z",
                "updated_at": "2019-05-26T12:28:53.091Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 46,
                "name": "Jyn Erso",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.091Z",
                "created_at": "2019-05-26T12:28:53.092Z",
                "updated_at": "2019-05-26T12:28:53.092Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              },
              {
                "id": 47,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T12:28:53.093Z",
                "created_at": "2019-05-26T12:28:53.094Z",
                "updated_at": "2019-05-26T12:28:53.094Z",
                "todo": {
                  "id": 9,
                  "title": "voluptas",
                  "user_id": 11,
                  "created_at": "2019-05-26T12:28:53.058Z",
                  "updated_at": "2019-05-26T12:28:53.058Z"
                }
              }
            ]

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/api/v1/todos/0/items`

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
**GET**&nbsp;&nbsp;`/api/v1/todos/0/items`

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
              "name": "Darth Caedus",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-06-02T12:28:53.202Z",
              "created_at": "2019-05-26T12:28:53.204Z",
              "updated_at": "2019-05-26T12:28:53.204Z",
              "todo": {
                "id": 12,
                "title": "at",
                "user_id": 14,
                "created_at": "2019-05-26T12:28:53.201Z",
                "updated_at": "2019-05-26T12:28:53.201Z"
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
              "name": "Yoda",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-06-02T12:28:53.260Z",
              "created_at": "2019-05-26T12:28:53.261Z",
              "updated_at": "2019-05-26T12:28:53.261Z",
              "todo": {
                "id": 13,
                "title": "tenetur",
                "user_id": 15,
                "created_at": "2019-05-26T12:28:53.259Z",
                "updated_at": "2019-05-26T12:28:53.259Z"
              }
            }

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/api/v1/todos/14/items/0`

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
**GET**&nbsp;&nbsp;`/api/v1/todos/15/items/0`

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
              "created_at": "2019-05-26T12:28:53.440Z",
              "updated_at": "2019-05-26T12:28:53.440Z",
              "todo": {
                "id": 16,
                "title": "excepturi",
                "user_id": 18,
                "created_at": "2019-05-26T12:28:53.395Z",
                "updated_at": "2019-05-26T12:28:53.395Z"
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
              "message": "#<ActiveModel::Errors:0x000056239bd71ad0>"
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
              "deadline": "2019-06-02T12:28:53.493Z",
              "created_at": "2019-05-26T12:28:53.494Z",
              "updated_at": "2019-05-26T12:28:53.531Z",
              "todo": {
                "id": 18,
                "title": "omnis",
                "user_id": 20,
                "created_at": "2019-05-26T12:28:53.492Z",
                "updated_at": "2019-05-26T12:28:53.492Z"
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
              "deadline": "2019-06-02T12:28:53.539Z",
              "created_at": "2019-05-26T12:28:53.540Z",
              "updated_at": "2019-05-26T12:28:53.578Z",
              "todo": {
                "id": 19,
                "title": "totam",
                "user_id": 21,
                "created_at": "2019-05-26T12:28:53.538Z",
                "updated_at": "2019-05-26T12:28:53.538Z"
              }
            }

+ Request returns status code 404
**PUT**&nbsp;&nbsp;`/api/v1/todos/20/items/0`

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
**PUT**&nbsp;&nbsp;`/api/v1/todos/21/items/0`

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
                "title": "vitae",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.716Z",
                "updated_at": "2019-05-26T12:28:53.716Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 24,
                "title": "doloremque",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.718Z",
                "updated_at": "2019-05-26T12:28:53.718Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 25,
                "title": "in",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.719Z",
                "updated_at": "2019-05-26T12:28:53.719Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 26,
                "title": "explicabo",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.721Z",
                "updated_at": "2019-05-26T12:28:53.721Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 27,
                "title": "qui",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.722Z",
                "updated_at": "2019-05-26T12:28:53.722Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 28,
                "title": "et",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.724Z",
                "updated_at": "2019-05-26T12:28:53.724Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 29,
                "title": "et",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.725Z",
                "updated_at": "2019-05-26T12:28:53.725Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 30,
                "title": "nihil",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.727Z",
                "updated_at": "2019-05-26T12:28:53.727Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 31,
                "title": "amet",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.728Z",
                "updated_at": "2019-05-26T12:28:53.728Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
                }
              },
              {
                "id": 32,
                "title": "eum",
                "user_id": 25,
                "created_at": "2019-05-26T12:28:53.729Z",
                "updated_at": "2019-05-26T12:28:53.729Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Macy Wehner",
                  "email": "calvin@smith.info",
                  "password_digest": "$2a$04$VLlOovp4fTObAj/9qtphA.QfAeXr1b/csZIc6GG9S4/5sB2egXXv6",
                  "created_at": "2019-05-26T12:28:53.714Z",
                  "updated_at": "2019-05-26T12:28:53.714Z"
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
                "title": "deserunt",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.757Z",
                "updated_at": "2019-05-26T12:28:53.757Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 34,
                "title": "perspiciatis",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.759Z",
                "updated_at": "2019-05-26T12:28:53.759Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 35,
                "title": "sed",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.761Z",
                "updated_at": "2019-05-26T12:28:53.761Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 36,
                "title": "cum",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.763Z",
                "updated_at": "2019-05-26T12:28:53.763Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 37,
                "title": "id",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.765Z",
                "updated_at": "2019-05-26T12:28:53.765Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 38,
                "title": "et",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.767Z",
                "updated_at": "2019-05-26T12:28:53.767Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 39,
                "title": "eum",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.769Z",
                "updated_at": "2019-05-26T12:28:53.769Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 40,
                "title": "debitis",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.771Z",
                "updated_at": "2019-05-26T12:28:53.771Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 41,
                "title": "totam",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.772Z",
                "updated_at": "2019-05-26T12:28:53.772Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
                }
              },
              {
                "id": 42,
                "title": "aut",
                "user_id": 26,
                "created_at": "2019-05-26T12:28:53.774Z",
                "updated_at": "2019-05-26T12:28:53.774Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Mr. Latoria Bruen",
                  "email": "rolfschuppe@jacobson.name",
                  "password_digest": "$2a$04$u.O1MLaLjpli.MVW8chUzO71ZIhRf/d2ACDeSBejLBS/kHv1zWdzC",
                  "created_at": "2019-05-26T12:28:53.755Z",
                  "updated_at": "2019-05-26T12:28:53.755Z"
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
              "created_at": "2019-05-26T12:28:53.794Z",
              "updated_at": "2019-05-26T12:28:53.794Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Vikki Legros",
                "email": "brettankunding@osinski.name",
                "password_digest": "$2a$04$xplyeH8N.cz.bW1xhfbj1e8SSvpQcVFy/84ECBVZZy6oz66hLk/LS",
                "created_at": "2019-05-26T12:28:53.792Z",
                "updated_at": "2019-05-26T12:28:53.792Z"
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
              "title": "ea",
              "user_id": 28,
              "created_at": "2019-05-26T12:28:53.819Z",
              "updated_at": "2019-05-26T12:28:53.819Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Trena Pagac",
                "email": "ehtelgulgowski@kunze.name",
                "password_digest": "$2a$04$C5CTlqtXE.9hweCCkycBh.aXIjaZnM4BSmYSWKs2ZQd5yLxUYL5g6",
                "created_at": "2019-05-26T12:28:53.817Z",
                "updated_at": "2019-05-26T12:28:53.817Z"
              }
            }

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/api/v1/todos/1000`

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
**GET**&nbsp;&nbsp;`/api/v1/todos/1000`

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
              "created_at": "2019-05-26T12:28:53.930Z",
              "updated_at": "2019-05-26T12:28:53.930Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Andrea Kuhn",
                "email": "josefina@veum.com",
                "password_digest": "$2a$04$pfQ8mjcusYG0THf1o8J9OeVl22oxjAVgYeHM7QYFJocewZCgsKRr2",
                "created_at": "2019-05-26T12:28:53.904Z",
                "updated_at": "2019-05-26T12:28:53.904Z"
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
              "created_at": "2019-05-26T12:28:53.962Z",
              "updated_at": "2019-05-26T12:28:53.962Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Tomeka Kiehn",
                "email": "gerryjohns@murphytorp.io",
                "password_digest": "$2a$04$kVZbMHNefcAme1zFRwzrX.pEGOdJTNGfjUzDzmtEgKm.igJyYTQN6",
                "created_at": "2019-05-26T12:28:53.937Z",
                "updated_at": "2019-05-26T12:28:53.937Z"
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
              "message": "#<ActiveModel::Errors:0x000056239b42f2d8>"
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
              "created_at": "2019-05-26T12:28:53.995Z",
              "updated_at": "2019-05-26T12:28:54.014Z",
              "items": [
            
              ],
              "user": {
                "id": 34,
                "name": "Deeanna Corkery",
                "email": "jame@cartwright.info",
                "password_digest": "$2a$04$MiqB0Ocbvex3eHFowIa2s.UoKIDf55p2pCGmFz187lhISU3wLelMK",
                "created_at": "2019-05-26T12:28:53.993Z",
                "updated_at": "2019-05-26T12:28:53.993Z"
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
