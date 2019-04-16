

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
              "email": "whitneykris@leannongrant.info",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTU1Mzg0NjZ9.VOBGDuA5ZQCumrAOEF_WVaTC25SlrV2w-0Fzo0KVaKg"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "conrad@kemmer.io",
              "password": "Y8H4GwOaA"
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
              "name": "Dewey Fahey",
              "email": "lavette@kuhndonnelly.net",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU1NTM4NDY4fQ.ZyLFJVfyb0qYALouXJ_qTO7i95ga0T1pGJJAeWE6wgI"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Miss Quyen Gibson",
              "email": "reynalda@quitzon.io",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU1NTM4NDY4fQ.9Rxf_mRY55YukFuUK5vyK9WjtlM1BgHOKLSE6Hl494c"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Joanne Doyle II",
              "email": "leontineyost@homenick.io",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOSwiZXhwIjoxNTU1NTM4NDY4fQ.9nY1vaoTRKbJZoTRhn_nPdwRhu6d9S0Cd0ekKFULXSk"
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
                "body": "Anakin Skywalker",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-04-16T22:01:06.910Z",
                "updated_at": "2019-04-16T22:01:06.910Z",
                "item": {
                  "id": 1,
                  "name": "Kanan Jarrus",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-04-23T22:01:06.898Z",
                  "created_at": "2019-04-16T22:01:06.900Z",
                  "updated_at": "2019-04-16T22:01:06.900Z"
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
              "body": "Count Dooku",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-04-16T22:01:06.947Z",
              "updated_at": "2019-04-16T22:01:06.947Z",
              "item": {
                "id": 2,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-04-23T22:01:06.944Z",
                "created_at": "2019-04-16T22:01:06.945Z",
                "updated_at": "2019-04-16T22:01:06.945Z"
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
              "name": "Lando Calrissian",
              "done": false,
              "todo_id": 3,
              "deadline": "2019-04-23T22:01:06.962Z",
              "created_at": "2019-04-16T22:01:06.963Z",
              "updated_at": "2019-04-16T22:01:06.963Z",
              "todo": {
                "id": 3,
                "title": "ipsam",
                "user_id": 5,
                "created_at": "2019-04-16T22:01:06.961Z",
                "updated_at": "2019-04-16T22:01:06.961Z"
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
              "name": "Ben Solo",
              "done": false,
              "todo_id": 4,
              "deadline": "2019-04-23T22:01:06.981Z",
              "created_at": "2019-04-16T22:01:06.982Z",
              "updated_at": "2019-04-16T22:01:06.982Z",
              "todo": {
                "id": 4,
                "title": "vel",
                "user_id": 6,
                "created_at": "2019-04-16T22:01:06.980Z",
                "updated_at": "2019-04-16T22:01:06.980Z"
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
                "name": "Kylo Ren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.048Z",
                "created_at": "2019-04-16T22:01:07.049Z",
                "updated_at": "2019-04-16T22:01:07.049Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 9,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.050Z",
                "created_at": "2019-04-16T22:01:07.051Z",
                "updated_at": "2019-04-16T22:01:07.051Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 10,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.052Z",
                "created_at": "2019-04-16T22:01:07.052Z",
                "updated_at": "2019-04-16T22:01:07.052Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 11,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.053Z",
                "created_at": "2019-04-16T22:01:07.054Z",
                "updated_at": "2019-04-16T22:01:07.054Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 12,
                "name": "Panaka",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.055Z",
                "created_at": "2019-04-16T22:01:07.056Z",
                "updated_at": "2019-04-16T22:01:07.056Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 13,
                "name": "Finn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.057Z",
                "created_at": "2019-04-16T22:01:07.058Z",
                "updated_at": "2019-04-16T22:01:07.058Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 14,
                "name": "Darth Maul",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.059Z",
                "created_at": "2019-04-16T22:01:07.060Z",
                "updated_at": "2019-04-16T22:01:07.060Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 15,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.061Z",
                "created_at": "2019-04-16T22:01:07.062Z",
                "updated_at": "2019-04-16T22:01:07.062Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 16,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.063Z",
                "created_at": "2019-04-16T22:01:07.063Z",
                "updated_at": "2019-04-16T22:01:07.063Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 17,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.064Z",
                "created_at": "2019-04-16T22:01:07.065Z",
                "updated_at": "2019-04-16T22:01:07.065Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 18,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.066Z",
                "created_at": "2019-04-16T22:01:07.067Z",
                "updated_at": "2019-04-16T22:01:07.067Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 19,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.068Z",
                "created_at": "2019-04-16T22:01:07.069Z",
                "updated_at": "2019-04-16T22:01:07.069Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 20,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.070Z",
                "created_at": "2019-04-16T22:01:07.070Z",
                "updated_at": "2019-04-16T22:01:07.070Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 21,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.071Z",
                "created_at": "2019-04-16T22:01:07.072Z",
                "updated_at": "2019-04-16T22:01:07.072Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 22,
                "name": "Greedo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.073Z",
                "created_at": "2019-04-16T22:01:07.074Z",
                "updated_at": "2019-04-16T22:01:07.074Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 23,
                "name": "Finn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.075Z",
                "created_at": "2019-04-16T22:01:07.075Z",
                "updated_at": "2019-04-16T22:01:07.075Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 24,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.076Z",
                "created_at": "2019-04-16T22:01:07.077Z",
                "updated_at": "2019-04-16T22:01:07.077Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 25,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.078Z",
                "created_at": "2019-04-16T22:01:07.079Z",
                "updated_at": "2019-04-16T22:01:07.079Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 26,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.080Z",
                "created_at": "2019-04-16T22:01:07.080Z",
                "updated_at": "2019-04-16T22:01:07.080Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
                }
              },
              {
                "id": 27,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-04-23T22:01:07.081Z",
                "created_at": "2019-04-16T22:01:07.082Z",
                "updated_at": "2019-04-16T22:01:07.082Z",
                "todo": {
                  "id": 8,
                  "title": "dolor",
                  "user_id": 10,
                  "created_at": "2019-04-16T22:01:07.046Z",
                  "updated_at": "2019-04-16T22:01:07.046Z"
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
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.103Z",
                "created_at": "2019-04-16T22:01:07.104Z",
                "updated_at": "2019-04-16T22:01:07.104Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 29,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.105Z",
                "created_at": "2019-04-16T22:01:07.105Z",
                "updated_at": "2019-04-16T22:01:07.105Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 30,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.106Z",
                "created_at": "2019-04-16T22:01:07.107Z",
                "updated_at": "2019-04-16T22:01:07.107Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 31,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.108Z",
                "created_at": "2019-04-16T22:01:07.109Z",
                "updated_at": "2019-04-16T22:01:07.109Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 32,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.110Z",
                "created_at": "2019-04-16T22:01:07.111Z",
                "updated_at": "2019-04-16T22:01:07.111Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 33,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.112Z",
                "created_at": "2019-04-16T22:01:07.113Z",
                "updated_at": "2019-04-16T22:01:07.113Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 34,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.114Z",
                "created_at": "2019-04-16T22:01:07.114Z",
                "updated_at": "2019-04-16T22:01:07.114Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 35,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.115Z",
                "created_at": "2019-04-16T22:01:07.116Z",
                "updated_at": "2019-04-16T22:01:07.116Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 36,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.117Z",
                "created_at": "2019-04-16T22:01:07.118Z",
                "updated_at": "2019-04-16T22:01:07.118Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 37,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.119Z",
                "created_at": "2019-04-16T22:01:07.120Z",
                "updated_at": "2019-04-16T22:01:07.120Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 38,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.121Z",
                "created_at": "2019-04-16T22:01:07.121Z",
                "updated_at": "2019-04-16T22:01:07.121Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 39,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.122Z",
                "created_at": "2019-04-16T22:01:07.133Z",
                "updated_at": "2019-04-16T22:01:07.133Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 40,
                "name": "Panaka",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.134Z",
                "created_at": "2019-04-16T22:01:07.135Z",
                "updated_at": "2019-04-16T22:01:07.135Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 41,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.136Z",
                "created_at": "2019-04-16T22:01:07.137Z",
                "updated_at": "2019-04-16T22:01:07.137Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 42,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.138Z",
                "created_at": "2019-04-16T22:01:07.138Z",
                "updated_at": "2019-04-16T22:01:07.138Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 43,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.139Z",
                "created_at": "2019-04-16T22:01:07.140Z",
                "updated_at": "2019-04-16T22:01:07.140Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 44,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.141Z",
                "created_at": "2019-04-16T22:01:07.142Z",
                "updated_at": "2019-04-16T22:01:07.142Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 45,
                "name": "Bail Organa",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.143Z",
                "created_at": "2019-04-16T22:01:07.144Z",
                "updated_at": "2019-04-16T22:01:07.144Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 46,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.145Z",
                "created_at": "2019-04-16T22:01:07.146Z",
                "updated_at": "2019-04-16T22:01:07.146Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
                }
              },
              {
                "id": 47,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-04-23T22:01:07.147Z",
                "created_at": "2019-04-16T22:01:07.148Z",
                "updated_at": "2019-04-16T22:01:07.148Z",
                "todo": {
                  "id": 9,
                  "title": "et",
                  "user_id": 11,
                  "created_at": "2019-04-16T22:01:07.102Z",
                  "updated_at": "2019-04-16T22:01:07.102Z"
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
              "name": "Asajj Ventress",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-04-23T22:01:07.255Z",
              "created_at": "2019-04-16T22:01:07.256Z",
              "updated_at": "2019-04-16T22:01:07.256Z",
              "todo": {
                "id": 12,
                "title": "nostrum",
                "user_id": 14,
                "created_at": "2019-04-16T22:01:07.254Z",
                "updated_at": "2019-04-16T22:01:07.254Z"
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
              "name": "Wedge Antilles",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-04-23T22:01:07.299Z",
              "created_at": "2019-04-16T22:01:07.300Z",
              "updated_at": "2019-04-16T22:01:07.300Z",
              "todo": {
                "id": 13,
                "title": "consequatur",
                "user_id": 15,
                "created_at": "2019-04-16T22:01:07.298Z",
                "updated_at": "2019-04-16T22:01:07.298Z"
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
              "title": "qui",
              "user_id": 18,
              "created_at": "2019-04-16T22:01:07.430Z",
              "updated_at": "2019-04-16T22:01:07.430Z",
              "items": [
                {
                  "id": 168,
                  "name": "Count Dooku",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.431Z",
                  "created_at": "2019-04-16T22:01:07.432Z",
                  "updated_at": "2019-04-16T22:01:07.432Z"
                },
                {
                  "id": 169,
                  "name": "Mace Windu",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.433Z",
                  "created_at": "2019-04-16T22:01:07.433Z",
                  "updated_at": "2019-04-16T22:01:07.433Z"
                },
                {
                  "id": 170,
                  "name": "Ezra Bridger",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.434Z",
                  "created_at": "2019-04-16T22:01:07.435Z",
                  "updated_at": "2019-04-16T22:01:07.435Z"
                },
                {
                  "id": 171,
                  "name": "Anakin Skywalker",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.436Z",
                  "created_at": "2019-04-16T22:01:07.437Z",
                  "updated_at": "2019-04-16T22:01:07.437Z"
                },
                {
                  "id": 172,
                  "name": "Chewbacca",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.438Z",
                  "created_at": "2019-04-16T22:01:07.439Z",
                  "updated_at": "2019-04-16T22:01:07.439Z"
                },
                {
                  "id": 173,
                  "name": "Saw Gerrera",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.439Z",
                  "created_at": "2019-04-16T22:01:07.440Z",
                  "updated_at": "2019-04-16T22:01:07.440Z"
                },
                {
                  "id": 174,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.441Z",
                  "created_at": "2019-04-16T22:01:07.442Z",
                  "updated_at": "2019-04-16T22:01:07.442Z"
                },
                {
                  "id": 175,
                  "name": "Lando Calrissian",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.443Z",
                  "created_at": "2019-04-16T22:01:07.444Z",
                  "updated_at": "2019-04-16T22:01:07.444Z"
                },
                {
                  "id": 176,
                  "name": "Jar Jar Binks",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.444Z",
                  "created_at": "2019-04-16T22:01:07.445Z",
                  "updated_at": "2019-04-16T22:01:07.445Z"
                },
                {
                  "id": 177,
                  "name": "Mace Windu",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.446Z",
                  "created_at": "2019-04-16T22:01:07.447Z",
                  "updated_at": "2019-04-16T22:01:07.447Z"
                },
                {
                  "id": 178,
                  "name": "Nute Gunray",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.448Z",
                  "created_at": "2019-04-16T22:01:07.449Z",
                  "updated_at": "2019-04-16T22:01:07.449Z"
                },
                {
                  "id": 179,
                  "name": "Luke Skywalker",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.449Z",
                  "created_at": "2019-04-16T22:01:07.450Z",
                  "updated_at": "2019-04-16T22:01:07.450Z"
                },
                {
                  "id": 180,
                  "name": "General Hux",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.451Z",
                  "created_at": "2019-04-16T22:01:07.452Z",
                  "updated_at": "2019-04-16T22:01:07.452Z"
                },
                {
                  "id": 181,
                  "name": "Ezra Bridger",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.453Z",
                  "created_at": "2019-04-16T22:01:07.453Z",
                  "updated_at": "2019-04-16T22:01:07.453Z"
                },
                {
                  "id": 182,
                  "name": "Lyra Erso",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.454Z",
                  "created_at": "2019-04-16T22:01:07.455Z",
                  "updated_at": "2019-04-16T22:01:07.455Z"
                },
                {
                  "id": 183,
                  "name": "Maz Kanata",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.456Z",
                  "created_at": "2019-04-16T22:01:07.457Z",
                  "updated_at": "2019-04-16T22:01:07.457Z"
                },
                {
                  "id": 184,
                  "name": "Galen Erso",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.458Z",
                  "created_at": "2019-04-16T22:01:07.458Z",
                  "updated_at": "2019-04-16T22:01:07.458Z"
                },
                {
                  "id": 185,
                  "name": "Watto",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.459Z",
                  "created_at": "2019-04-16T22:01:07.460Z",
                  "updated_at": "2019-04-16T22:01:07.460Z"
                },
                {
                  "id": 186,
                  "name": "Ezra Bridger",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.461Z",
                  "created_at": "2019-04-16T22:01:07.461Z",
                  "updated_at": "2019-04-16T22:01:07.461Z"
                },
                {
                  "id": 187,
                  "name": "Darth Vader",
                  "done": false,
                  "todo_id": 16,
                  "deadline": "2019-04-23T22:01:07.462Z",
                  "created_at": "2019-04-16T22:01:07.463Z",
                  "updated_at": "2019-04-16T22:01:07.463Z"
                },
                {
                  "id": 188,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 16,
                  "deadline": null,
                  "created_at": "2019-04-16T22:01:07.467Z",
                  "updated_at": "2019-04-16T22:01:07.467Z"
                }
              ],
              "user": {
                "id": 18,
                "name": "Miss Forest Cruickshank",
                "email": "debbra@dachpouros.co",
                "password_digest": "$2a$04$R5Wj8QRoqZLt0xG0oGRQtuvrmNtWz0bSACcJmQjz6RyVviHBjzzeW",
                "created_at": "2019-04-16T22:01:07.428Z",
                "updated_at": "2019-04-16T22:01:07.428Z"
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
              "title": "iure",
              "user_id": 19,
              "created_at": "2019-04-16T22:01:07.483Z",
              "updated_at": "2019-04-16T22:01:07.483Z",
              "items": [
                {
                  "id": 189,
                  "name": "Wedge Antilles",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.484Z",
                  "created_at": "2019-04-16T22:01:07.485Z",
                  "updated_at": "2019-04-16T22:01:07.485Z"
                },
                {
                  "id": 190,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.486Z",
                  "created_at": "2019-04-16T22:01:07.487Z",
                  "updated_at": "2019-04-16T22:01:07.487Z"
                },
                {
                  "id": 191,
                  "name": "Mace Windu",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.492Z",
                  "created_at": "2019-04-16T22:01:07.493Z",
                  "updated_at": "2019-04-16T22:01:07.493Z"
                },
                {
                  "id": 192,
                  "name": "Maz Kanata",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.494Z",
                  "created_at": "2019-04-16T22:01:07.495Z",
                  "updated_at": "2019-04-16T22:01:07.495Z"
                },
                {
                  "id": 193,
                  "name": "Boba Fett",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.496Z",
                  "created_at": "2019-04-16T22:01:07.497Z",
                  "updated_at": "2019-04-16T22:01:07.497Z"
                },
                {
                  "id": 194,
                  "name": "Yoda",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.498Z",
                  "created_at": "2019-04-16T22:01:07.499Z",
                  "updated_at": "2019-04-16T22:01:07.499Z"
                },
                {
                  "id": 195,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.500Z",
                  "created_at": "2019-04-16T22:01:07.501Z",
                  "updated_at": "2019-04-16T22:01:07.501Z"
                },
                {
                  "id": 196,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.501Z",
                  "created_at": "2019-04-16T22:01:07.502Z",
                  "updated_at": "2019-04-16T22:01:07.502Z"
                },
                {
                  "id": 197,
                  "name": "Anakin Skywalker",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.503Z",
                  "created_at": "2019-04-16T22:01:07.504Z",
                  "updated_at": "2019-04-16T22:01:07.504Z"
                },
                {
                  "id": 198,
                  "name": "Savage Opress",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.505Z",
                  "created_at": "2019-04-16T22:01:07.506Z",
                  "updated_at": "2019-04-16T22:01:07.506Z"
                },
                {
                  "id": 199,
                  "name": "Darth Caedus",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.507Z",
                  "created_at": "2019-04-16T22:01:07.508Z",
                  "updated_at": "2019-04-16T22:01:07.508Z"
                },
                {
                  "id": 200,
                  "name": "Asajj Ventress",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.509Z",
                  "created_at": "2019-04-16T22:01:07.510Z",
                  "updated_at": "2019-04-16T22:01:07.510Z"
                },
                {
                  "id": 201,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.511Z",
                  "created_at": "2019-04-16T22:01:07.511Z",
                  "updated_at": "2019-04-16T22:01:07.511Z"
                },
                {
                  "id": 202,
                  "name": "Grand Admiral Thrawn",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.512Z",
                  "created_at": "2019-04-16T22:01:07.513Z",
                  "updated_at": "2019-04-16T22:01:07.513Z"
                },
                {
                  "id": 203,
                  "name": "Wedge Antilles",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.514Z",
                  "created_at": "2019-04-16T22:01:07.515Z",
                  "updated_at": "2019-04-16T22:01:07.515Z"
                },
                {
                  "id": 204,
                  "name": "Padme Amidala",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.516Z",
                  "created_at": "2019-04-16T22:01:07.517Z",
                  "updated_at": "2019-04-16T22:01:07.517Z"
                },
                {
                  "id": 205,
                  "name": "Chirrut Imwe",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.518Z",
                  "created_at": "2019-04-16T22:01:07.519Z",
                  "updated_at": "2019-04-16T22:01:07.519Z"
                },
                {
                  "id": 206,
                  "name": "Anakin Skywalker",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.520Z",
                  "created_at": "2019-04-16T22:01:07.520Z",
                  "updated_at": "2019-04-16T22:01:07.520Z"
                },
                {
                  "id": 207,
                  "name": "Ben Solo",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.521Z",
                  "created_at": "2019-04-16T22:01:07.522Z",
                  "updated_at": "2019-04-16T22:01:07.522Z"
                },
                {
                  "id": 208,
                  "name": "Jabba the Hutt",
                  "done": false,
                  "todo_id": 17,
                  "deadline": "2019-04-23T22:01:07.523Z",
                  "created_at": "2019-04-16T22:01:07.524Z",
                  "updated_at": "2019-04-16T22:01:07.524Z"
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
                "name": "Noreen Price Jr.",
                "email": "etsukokovacek@lehnerwilkinson.org",
                "password_digest": "$2a$04$1qNkSkfEo9kAye274JTD6uV.9hwgmPc40at7.AN8wmsSnYoMUeFi.",
                "created_at": "2019-04-16T22:01:07.481Z",
                "updated_at": "2019-04-16T22:01:07.481Z"
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
                "title": "quo",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.760Z",
                "updated_at": "2019-04-16T22:01:07.760Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 24,
                "title": "corrupti",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.762Z",
                "updated_at": "2019-04-16T22:01:07.762Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 25,
                "title": "non",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.763Z",
                "updated_at": "2019-04-16T22:01:07.763Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 26,
                "title": "est",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.765Z",
                "updated_at": "2019-04-16T22:01:07.765Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 27,
                "title": "et",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.766Z",
                "updated_at": "2019-04-16T22:01:07.766Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 28,
                "title": "in",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.768Z",
                "updated_at": "2019-04-16T22:01:07.768Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 29,
                "title": "et",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.769Z",
                "updated_at": "2019-04-16T22:01:07.769Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 30,
                "title": "quas",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.771Z",
                "updated_at": "2019-04-16T22:01:07.771Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 31,
                "title": "sint",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.773Z",
                "updated_at": "2019-04-16T22:01:07.773Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
                }
              },
              {
                "id": 32,
                "title": "asperiores",
                "user_id": 25,
                "created_at": "2019-04-16T22:01:07.775Z",
                "updated_at": "2019-04-16T22:01:07.775Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Dr. Taneka Predovic",
                  "email": "chayabeahan@kuvalis.co",
                  "password_digest": "$2a$04$tCxmhu5Bf/BHAb29z9F78.zlv20UiP9ubXe8I02VXDKIDqGKJBTaC",
                  "created_at": "2019-04-16T22:01:07.758Z",
                  "updated_at": "2019-04-16T22:01:07.758Z"
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
                "title": "et",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.796Z",
                "updated_at": "2019-04-16T22:01:07.796Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 34,
                "title": "provident",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.798Z",
                "updated_at": "2019-04-16T22:01:07.798Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 35,
                "title": "eum",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.799Z",
                "updated_at": "2019-04-16T22:01:07.799Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 36,
                "title": "laudantium",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.801Z",
                "updated_at": "2019-04-16T22:01:07.801Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 37,
                "title": "dignissimos",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.802Z",
                "updated_at": "2019-04-16T22:01:07.802Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 38,
                "title": "amet",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.804Z",
                "updated_at": "2019-04-16T22:01:07.804Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 39,
                "title": "voluptatem",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.805Z",
                "updated_at": "2019-04-16T22:01:07.805Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 40,
                "title": "sequi",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.807Z",
                "updated_at": "2019-04-16T22:01:07.807Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 41,
                "title": "quisquam",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.808Z",
                "updated_at": "2019-04-16T22:01:07.808Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
                }
              },
              {
                "id": 42,
                "title": "est",
                "user_id": 26,
                "created_at": "2019-04-16T22:01:07.810Z",
                "updated_at": "2019-04-16T22:01:07.810Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Lilliam Bradtke MD",
                  "email": "danette@heaney.io",
                  "password_digest": "$2a$04$lvs3IyIE6h4PDstY//OSyuf6JHNJidGe/pmV1agljwYDRAVxWIGNW",
                  "created_at": "2019-04-16T22:01:07.794Z",
                  "updated_at": "2019-04-16T22:01:07.794Z"
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
              "title": "rerum",
              "user_id": 27,
              "created_at": "2019-04-16T22:01:07.830Z",
              "updated_at": "2019-04-16T22:01:07.830Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Rodney Wiza",
                "email": "sabine@wilderman.org",
                "password_digest": "$2a$04$ps9MSXLqiy4V9S30l4V/oeMYsRQhYrT./ejD0yMtA0znK2B9Mn1pi",
                "created_at": "2019-04-16T22:01:07.828Z",
                "updated_at": "2019-04-16T22:01:07.828Z"
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
              "title": "impedit",
              "user_id": 28,
              "created_at": "2019-04-16T22:01:07.859Z",
              "updated_at": "2019-04-16T22:01:07.859Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Kimi Pacocha IV",
                "email": "demarcus@reichert.info",
                "password_digest": "$2a$04$KM6KRuBP.xHIwnbffKq.bOeWVTiygJWXDcqzpHn0fNpd6Wjw6jAEW",
                "created_at": "2019-04-16T22:01:07.857Z",
                "updated_at": "2019-04-16T22:01:07.857Z"
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
              "created_at": "2019-04-16T22:01:07.950Z",
              "updated_at": "2019-04-16T22:01:07.950Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Roxanna Wisoky V",
                "email": "randellboyer@bogisich.com",
                "password_digest": "$2a$04$c6guGVTc9jEv4VZLer4P3.XyAb8lT1/QOmcRqjJ/qRM2g8Xa8bmPC",
                "created_at": "2019-04-16T22:01:07.931Z",
                "updated_at": "2019-04-16T22:01:07.931Z"
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
              "created_at": "2019-04-16T22:01:07.973Z",
              "updated_at": "2019-04-16T22:01:07.973Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Flo Schuppe",
                "email": "wilforddaniel@goodwinhartmann.io",
                "password_digest": "$2a$04$5ZrEV7SeWe.Q0EbGeGktmOXoO/oyz.C7qUna9MNUbl4xt/vRnr/Da",
                "created_at": "2019-04-16T22:01:07.956Z",
                "updated_at": "2019-04-16T22:01:07.956Z"
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
                "name": "Denita Kling II",
                "email": "jesusaheidenreich@spinka.info",
                "password_digest": "$2a$04$B99z.PMKSPsjc4LkvhVLk.CN7yN9jNBP6WSQsptSAQhIAOqG5f6WG",
                "created_at": "2019-04-16T22:01:07.979Z",
                "updated_at": "2019-04-16T22:01:07.979Z"
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
