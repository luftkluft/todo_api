

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
              "email": "senaidatowne@wisoky.name",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTY3NDcxMjJ9.m-SZC2RseTASIw1UCdg3bhxqqzQ6EXn8Q-lDwNgs-R4"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "doreatha@kovacek.name",
              "password": "4aEdBt1nJrA"
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
              "name": "Elvis Becker",
              "email": "samuelabbott@wisoky.info",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTU2NzQ3MTIzfQ.o540YavgtGwyOTCjGdX-UAXeEnCfLPF-_4Gdjaz6wmM"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Laquita Collier",
              "email": "mileslegros@wiegand.name",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU2NzQ3MTI0fQ.clHZuruafZZqiAoVBxWOFty4JX2VEASyk36_1yKowu8"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Harrison Gleichner",
              "email": "tamekiaaufderhar@doylekub.info",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU2NzQ3MTI0fQ.BZRb7a3VjPF3h9iPqdtDHKlr3koa6JDehur2tbpx248"
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
                "body": "Bail Organatest",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-04-30T21:45:22.733Z",
                "updated_at": "2019-04-30T21:45:22.733Z",
                "item": {
                  "id": 1,
                  "name": "Anakin Skywalker",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-05-07T21:45:22.721Z",
                  "created_at": "2019-04-30T21:45:22.724Z",
                  "updated_at": "2019-04-30T21:45:22.724Z"
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
              "created_at": "2019-04-30T21:45:22.770Z",
              "updated_at": "2019-04-30T21:45:22.770Z",
              "item": {
                "id": 2,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-05-07T21:45:22.767Z",
                "created_at": "2019-04-30T21:45:22.768Z",
                "updated_at": "2019-04-30T21:45:22.768Z"
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
              "created_at": "2019-04-30T21:45:22.795Z",
              "updated_at": "2019-04-30T21:45:22.795Z",
              "item": {
                "id": 3,
                "name": "Watto",
                "done": false,
                "todo_id": 3,
                "deadline": "2019-05-07T21:45:22.786Z",
                "created_at": "2019-04-30T21:45:22.787Z",
                "updated_at": "2019-04-30T21:45:22.787Z"
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
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 4,
                "deadline": "2019-05-07T21:45:22.804Z",
                "created_at": "2019-04-30T21:45:22.805Z",
                "updated_at": "2019-04-30T21:45:22.805Z"
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
              "created_at": "2019-04-30T21:45:22.826Z",
              "updated_at": "2019-04-30T21:45:22.835Z",
              "item": {
                "id": 5,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 5,
                "deadline": "2019-05-07T21:45:22.823Z",
                "created_at": "2019-04-30T21:45:22.824Z",
                "updated_at": "2019-04-30T21:45:22.824Z"
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
              "created_at": "2019-04-30T21:45:22.850Z",
              "updated_at": "2019-04-30T21:45:22.859Z",
              "item": {
                "id": 6,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 6,
                "deadline": "2019-05-07T21:45:22.847Z",
                "created_at": "2019-04-30T21:45:22.848Z",
                "updated_at": "2019-04-30T21:45:22.848Z"
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
                "name": "Ben Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.889Z",
                "created_at": "2019-04-30T21:45:22.890Z",
                "updated_at": "2019-04-30T21:45:22.890Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 9,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.891Z",
                "created_at": "2019-04-30T21:45:22.892Z",
                "updated_at": "2019-04-30T21:45:22.892Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 10,
                "name": "Darth Maul",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.893Z",
                "created_at": "2019-04-30T21:45:22.894Z",
                "updated_at": "2019-04-30T21:45:22.894Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 11,
                "name": "Darth Maul",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.895Z",
                "created_at": "2019-04-30T21:45:22.896Z",
                "updated_at": "2019-04-30T21:45:22.896Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 12,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.897Z",
                "created_at": "2019-04-30T21:45:22.898Z",
                "updated_at": "2019-04-30T21:45:22.898Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 13,
                "name": "Kylo Ren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.899Z",
                "created_at": "2019-04-30T21:45:22.899Z",
                "updated_at": "2019-04-30T21:45:22.899Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 14,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.900Z",
                "created_at": "2019-04-30T21:45:22.901Z",
                "updated_at": "2019-04-30T21:45:22.901Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 15,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.902Z",
                "created_at": "2019-04-30T21:45:22.903Z",
                "updated_at": "2019-04-30T21:45:22.903Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 16,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.903Z",
                "created_at": "2019-04-30T21:45:22.904Z",
                "updated_at": "2019-04-30T21:45:22.904Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 17,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.905Z",
                "created_at": "2019-04-30T21:45:22.906Z",
                "updated_at": "2019-04-30T21:45:22.906Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 18,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.907Z",
                "created_at": "2019-04-30T21:45:22.907Z",
                "updated_at": "2019-04-30T21:45:22.907Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 19,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.908Z",
                "created_at": "2019-04-30T21:45:22.909Z",
                "updated_at": "2019-04-30T21:45:22.909Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 20,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.910Z",
                "created_at": "2019-04-30T21:45:22.910Z",
                "updated_at": "2019-04-30T21:45:22.910Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 21,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.911Z",
                "created_at": "2019-04-30T21:45:22.912Z",
                "updated_at": "2019-04-30T21:45:22.912Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 22,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.913Z",
                "created_at": "2019-04-30T21:45:22.914Z",
                "updated_at": "2019-04-30T21:45:22.914Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 23,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.914Z",
                "created_at": "2019-04-30T21:45:22.915Z",
                "updated_at": "2019-04-30T21:45:22.915Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 24,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.916Z",
                "created_at": "2019-04-30T21:45:22.917Z",
                "updated_at": "2019-04-30T21:45:22.917Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 25,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.918Z",
                "created_at": "2019-04-30T21:45:22.919Z",
                "updated_at": "2019-04-30T21:45:22.919Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 26,
                "name": "Panaka",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.920Z",
                "created_at": "2019-04-30T21:45:22.921Z",
                "updated_at": "2019-04-30T21:45:22.921Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
                }
              },
              {
                "id": 27,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-07T21:45:22.922Z",
                "created_at": "2019-04-30T21:45:22.922Z",
                "updated_at": "2019-04-30T21:45:22.922Z",
                "todo": {
                  "id": 8,
                  "title": "quia",
                  "user_id": 10,
                  "created_at": "2019-04-30T21:45:22.888Z",
                  "updated_at": "2019-04-30T21:45:22.888Z"
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
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.955Z",
                "created_at": "2019-04-30T21:45:22.956Z",
                "updated_at": "2019-04-30T21:45:22.956Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 29,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.957Z",
                "created_at": "2019-04-30T21:45:22.958Z",
                "updated_at": "2019-04-30T21:45:22.958Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 30,
                "name": "Finn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.959Z",
                "created_at": "2019-04-30T21:45:22.959Z",
                "updated_at": "2019-04-30T21:45:22.959Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 31,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.961Z",
                "created_at": "2019-04-30T21:45:22.961Z",
                "updated_at": "2019-04-30T21:45:22.961Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 32,
                "name": "Han Solo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.962Z",
                "created_at": "2019-04-30T21:45:22.963Z",
                "updated_at": "2019-04-30T21:45:22.963Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 33,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.964Z",
                "created_at": "2019-04-30T21:45:22.965Z",
                "updated_at": "2019-04-30T21:45:22.965Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 34,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.966Z",
                "created_at": "2019-04-30T21:45:22.967Z",
                "updated_at": "2019-04-30T21:45:22.967Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 35,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.968Z",
                "created_at": "2019-04-30T21:45:22.969Z",
                "updated_at": "2019-04-30T21:45:22.969Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 36,
                "name": "Jyn Erso",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.970Z",
                "created_at": "2019-04-30T21:45:22.971Z",
                "updated_at": "2019-04-30T21:45:22.971Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 37,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.972Z",
                "created_at": "2019-04-30T21:45:22.973Z",
                "updated_at": "2019-04-30T21:45:22.973Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 38,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.974Z",
                "created_at": "2019-04-30T21:45:22.975Z",
                "updated_at": "2019-04-30T21:45:22.975Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 39,
                "name": "Yoda",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.976Z",
                "created_at": "2019-04-30T21:45:22.977Z",
                "updated_at": "2019-04-30T21:45:22.977Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 40,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.978Z",
                "created_at": "2019-04-30T21:45:22.979Z",
                "updated_at": "2019-04-30T21:45:22.979Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 41,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.980Z",
                "created_at": "2019-04-30T21:45:22.981Z",
                "updated_at": "2019-04-30T21:45:22.981Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 42,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.982Z",
                "created_at": "2019-04-30T21:45:22.983Z",
                "updated_at": "2019-04-30T21:45:22.983Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 43,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.984Z",
                "created_at": "2019-04-30T21:45:22.985Z",
                "updated_at": "2019-04-30T21:45:22.985Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 44,
                "name": "Rey",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.986Z",
                "created_at": "2019-04-30T21:45:22.986Z",
                "updated_at": "2019-04-30T21:45:22.986Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 45,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.987Z",
                "created_at": "2019-04-30T21:45:22.988Z",
                "updated_at": "2019-04-30T21:45:22.988Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 46,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.989Z",
                "created_at": "2019-04-30T21:45:22.990Z",
                "updated_at": "2019-04-30T21:45:22.990Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
                }
              },
              {
                "id": 47,
                "name": "General Hux",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-07T21:45:22.991Z",
                "created_at": "2019-04-30T21:45:22.992Z",
                "updated_at": "2019-04-30T21:45:22.992Z",
                "todo": {
                  "id": 9,
                  "title": "facere",
                  "user_id": 11,
                  "created_at": "2019-04-30T21:45:22.953Z",
                  "updated_at": "2019-04-30T21:45:22.953Z"
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
              "name": "Watto",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-05-07T21:45:23.101Z",
              "created_at": "2019-04-30T21:45:23.102Z",
              "updated_at": "2019-04-30T21:45:23.102Z",
              "todo": {
                "id": 12,
                "title": "voluptate",
                "user_id": 14,
                "created_at": "2019-04-30T21:45:23.100Z",
                "updated_at": "2019-04-30T21:45:23.100Z"
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
              "name": "Jango Fett",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-05-07T21:45:23.146Z",
              "created_at": "2019-04-30T21:45:23.147Z",
              "updated_at": "2019-04-30T21:45:23.147Z",
              "todo": {
                "id": 13,
                "title": "qui",
                "user_id": 15,
                "created_at": "2019-04-30T21:45:23.145Z",
                "updated_at": "2019-04-30T21:45:23.145Z"
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
              "created_at": "2019-04-30T21:45:23.362Z",
              "updated_at": "2019-04-30T21:45:23.362Z",
              "todo": {
                "id": 16,
                "title": "qui",
                "user_id": 18,
                "created_at": "2019-04-30T21:45:23.310Z",
                "updated_at": "2019-04-30T21:45:23.310Z"
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
                "title": "esse",
                "user_id": 19,
                "created_at": "2019-04-30T21:45:23.370Z",
                "updated_at": "2019-04-30T21:45:23.370Z"
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
              "deadline": "2019-05-07T21:45:23.424Z",
              "created_at": "2019-04-30T21:45:23.425Z",
              "updated_at": "2019-04-30T21:45:23.462Z",
              "todo": {
                "id": 18,
                "title": "ullam",
                "user_id": 20,
                "created_at": "2019-04-30T21:45:23.423Z",
                "updated_at": "2019-04-30T21:45:23.423Z"
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
              "deadline": "2019-05-07T21:45:23.471Z",
              "created_at": "2019-04-30T21:45:23.471Z",
              "updated_at": "2019-04-30T21:45:23.508Z",
              "todo": {
                "id": 19,
                "title": "quam",
                "user_id": 21,
                "created_at": "2019-04-30T21:45:23.470Z",
                "updated_at": "2019-04-30T21:45:23.470Z"
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
                "title": "qui",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.659Z",
                "updated_at": "2019-04-30T21:45:23.659Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 24,
                "title": "fugiat",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.661Z",
                "updated_at": "2019-04-30T21:45:23.661Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 25,
                "title": "ea",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.662Z",
                "updated_at": "2019-04-30T21:45:23.662Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 26,
                "title": "est",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.664Z",
                "updated_at": "2019-04-30T21:45:23.664Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 27,
                "title": "ratione",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.666Z",
                "updated_at": "2019-04-30T21:45:23.666Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 28,
                "title": "at",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.667Z",
                "updated_at": "2019-04-30T21:45:23.667Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 29,
                "title": "aut",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.669Z",
                "updated_at": "2019-04-30T21:45:23.669Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 30,
                "title": "ullam",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.671Z",
                "updated_at": "2019-04-30T21:45:23.671Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 31,
                "title": "magni",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.673Z",
                "updated_at": "2019-04-30T21:45:23.673Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
                }
              },
              {
                "id": 32,
                "title": "est",
                "user_id": 25,
                "created_at": "2019-04-30T21:45:23.674Z",
                "updated_at": "2019-04-30T21:45:23.674Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Sona Quigley",
                  "email": "tanishametz@corwin.net",
                  "password_digest": "$2a$04$GNuJmB.ag6EAQjfmUfhFX.uDA7ZOdQrhbB.GkovE1rkItWIj9/Iqe",
                  "created_at": "2019-04-30T21:45:23.657Z",
                  "updated_at": "2019-04-30T21:45:23.657Z"
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
                "title": "nobis",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.703Z",
                "updated_at": "2019-04-30T21:45:23.703Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 34,
                "title": "qui",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.705Z",
                "updated_at": "2019-04-30T21:45:23.705Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 35,
                "title": "voluptas",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.706Z",
                "updated_at": "2019-04-30T21:45:23.706Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 36,
                "title": "velit",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.708Z",
                "updated_at": "2019-04-30T21:45:23.708Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 37,
                "title": "esse",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.710Z",
                "updated_at": "2019-04-30T21:45:23.710Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 38,
                "title": "quaerat",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.711Z",
                "updated_at": "2019-04-30T21:45:23.711Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 39,
                "title": "enim",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.713Z",
                "updated_at": "2019-04-30T21:45:23.713Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 40,
                "title": "tempora",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.714Z",
                "updated_at": "2019-04-30T21:45:23.714Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 41,
                "title": "amet",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.716Z",
                "updated_at": "2019-04-30T21:45:23.716Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
                }
              },
              {
                "id": 42,
                "title": "sequi",
                "user_id": 26,
                "created_at": "2019-04-30T21:45:23.718Z",
                "updated_at": "2019-04-30T21:45:23.718Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Osvaldo Konopelski",
                  "email": "kam@rice.co",
                  "password_digest": "$2a$04$ZjN5s2ZWqrWV3wXZMepbj.bSHRkZWbpOVHtUSl/zXehAraC.ZcJ8a",
                  "created_at": "2019-04-30T21:45:23.700Z",
                  "updated_at": "2019-04-30T21:45:23.700Z"
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
              "title": "fugit",
              "user_id": 27,
              "created_at": "2019-04-30T21:45:23.738Z",
              "updated_at": "2019-04-30T21:45:23.738Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Cyril Bruen",
                "email": "nenitajohnson@larson.info",
                "password_digest": "$2a$04$XF0T5KXtF.s8.MzkDsDJueDL16Dlo97DoqvPU.xzO5aCbUdSdVFbq",
                "created_at": "2019-04-30T21:45:23.736Z",
                "updated_at": "2019-04-30T21:45:23.736Z"
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
              "title": "et",
              "user_id": 28,
              "created_at": "2019-04-30T21:45:23.766Z",
              "updated_at": "2019-04-30T21:45:23.766Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Ethelene Ernser",
                "email": "juanarenner@rohan.biz",
                "password_digest": "$2a$04$nsievbByAr8ppLJlwACbEuoMJmBRhqGnbEl6PEFrMZgHE2uqO6mlS",
                "created_at": "2019-04-30T21:45:23.763Z",
                "updated_at": "2019-04-30T21:45:23.763Z"
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
              "created_at": "2019-04-30T21:45:23.877Z",
              "updated_at": "2019-04-30T21:45:23.877Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Delmer Waelchi",
                "email": "jerryfunk@kuvalis.name",
                "password_digest": "$2a$04$1edelMsu8bKt5h7vecohAuDQj4xQpS6uGwKTN5j3DXswc9bDHAK7q",
                "created_at": "2019-04-30T21:45:23.851Z",
                "updated_at": "2019-04-30T21:45:23.851Z"
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
              "created_at": "2019-04-30T21:45:23.904Z",
              "updated_at": "2019-04-30T21:45:23.904Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Doretta Walker",
                "email": "rosemaryfahey@brekkecain.name",
                "password_digest": "$2a$04$SEW7Q0S4FqxrCAr6kTlYf.xWzXoAG0WHwyxxQqWk0VTy8vtWODY0G",
                "created_at": "2019-04-30T21:45:23.883Z",
                "updated_at": "2019-04-30T21:45:23.883Z"
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
                "name": "Fidel Erdman",
                "email": "francescofahey@vandervorthuel.io",
                "password_digest": "$2a$04$2yjaraZto9JF4aoXyjjvmep7RS0mCKWSUJ/hdLSi7Vw10Fi5GZi5O",
                "created_at": "2019-04-30T21:45:23.910Z",
                "updated_at": "2019-04-30T21:45:23.910Z"
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
              "created_at": "2019-04-30T21:45:23.937Z",
              "updated_at": "2019-04-30T21:45:23.956Z",
              "items": [
            
              ],
              "user": {
                "id": 34,
                "name": "Mrs. Lionel Ankunding",
                "email": "thad@medhurst.com",
                "password_digest": "$2a$04$d.L33a11fyNMRJHRzBASKeN1W0Wyh/kKhWwcNXAjiTsc.wfwDUV.K",
                "created_at": "2019-04-30T21:45:23.935Z",
                "updated_at": "2019-04-30T21:45:23.935Z"
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
