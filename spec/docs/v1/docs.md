

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
              "email": "ludieemard@walkerglover.co",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTc2ODkwMzZ9.MT0Uk08D4DXjux7tQJKFRzmPPS0Zp0xsvuhm9MUZuUs"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "royce@batz.io",
              "password": "5sN8JiOr4p"
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
              "name": "Li Shanahan",
              "email": "gale@balistreri.org",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTU3Njg5MDM4fQ.FIHg6bRRmJpcuM_8iZ6Cy07nnjdvwiKP1Hg-2k0KqC8"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Gloria Corwin",
              "email": "zoraida@brakus.name",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU3Njg5MDM4fQ.exW57zwh8IFd7YVOomTXiTLNiEJaF3bKLeBy_O6PmwU"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Maria Mante",
              "email": "dwightjohnston@bradtkerath.name",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU3Njg5MDM4fQ.SRhIuOuqDklGZPyeF_gTt3yVnBsQFAqkRqGYdtIJRdw"
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
                "body": "Maz Kanatatest",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-05-11T19:23:56.801Z",
                "updated_at": "2019-05-11T19:23:56.801Z",
                "item": {
                  "id": 1,
                  "name": "Jar Jar Binks",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-05-18T19:23:56.789Z",
                  "created_at": "2019-05-11T19:23:56.792Z",
                  "updated_at": "2019-05-11T19:23:56.792Z"
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
              "body": "Saw Gerreratest",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-05-11T19:23:56.838Z",
              "updated_at": "2019-05-11T19:23:56.838Z",
              "item": {
                "id": 2,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-05-18T19:23:56.835Z",
                "created_at": "2019-05-11T19:23:56.837Z",
                "updated_at": "2019-05-11T19:23:56.837Z"
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
              "created_at": "2019-05-11T19:23:56.866Z",
              "updated_at": "2019-05-11T19:23:56.866Z",
              "item": {
                "id": 3,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 3,
                "deadline": "2019-05-18T19:23:56.856Z",
                "created_at": "2019-05-11T19:23:56.858Z",
                "updated_at": "2019-05-11T19:23:56.858Z"
              }
            }

+ Request returns status code 422
**POST**&nbsp;&nbsp;`/todos/4/items/4/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "#<ActiveModel::Errors:0x0000562846876210>"
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
              "created_at": "2019-05-11T19:23:56.898Z",
              "updated_at": "2019-05-11T19:23:56.905Z",
              "item": {
                "id": 5,
                "name": "Chewbacca",
                "done": false,
                "todo_id": 5,
                "deadline": "2019-05-18T19:23:56.895Z",
                "created_at": "2019-05-11T19:23:56.896Z",
                "updated_at": "2019-05-11T19:23:56.896Z"
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
              "created_at": "2019-05-11T19:23:56.917Z",
              "updated_at": "2019-05-11T19:23:56.924Z",
              "item": {
                "id": 6,
                "name": "Greedo",
                "done": false,
                "todo_id": 6,
                "deadline": "2019-05-18T19:23:56.914Z",
                "created_at": "2019-05-11T19:23:56.915Z",
                "updated_at": "2019-05-11T19:23:56.915Z"
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
                "name": "Savage Opress",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.950Z",
                "created_at": "2019-05-11T19:23:56.951Z",
                "updated_at": "2019-05-11T19:23:56.951Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 9,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.953Z",
                "created_at": "2019-05-11T19:23:56.953Z",
                "updated_at": "2019-05-11T19:23:56.953Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 10,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.954Z",
                "created_at": "2019-05-11T19:23:56.955Z",
                "updated_at": "2019-05-11T19:23:56.955Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 11,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.957Z",
                "created_at": "2019-05-11T19:23:56.957Z",
                "updated_at": "2019-05-11T19:23:56.957Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 12,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.958Z",
                "created_at": "2019-05-11T19:23:56.959Z",
                "updated_at": "2019-05-11T19:23:56.959Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 13,
                "name": "Wedge Antilles",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.960Z",
                "created_at": "2019-05-11T19:23:56.961Z",
                "updated_at": "2019-05-11T19:23:56.961Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 14,
                "name": "Kylo Ren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.962Z",
                "created_at": "2019-05-11T19:23:56.963Z",
                "updated_at": "2019-05-11T19:23:56.963Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 15,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.964Z",
                "created_at": "2019-05-11T19:23:56.965Z",
                "updated_at": "2019-05-11T19:23:56.965Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 16,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.966Z",
                "created_at": "2019-05-11T19:23:56.967Z",
                "updated_at": "2019-05-11T19:23:56.967Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 17,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.968Z",
                "created_at": "2019-05-11T19:23:56.969Z",
                "updated_at": "2019-05-11T19:23:56.969Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 18,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.969Z",
                "created_at": "2019-05-11T19:23:56.970Z",
                "updated_at": "2019-05-11T19:23:56.970Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 19,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.971Z",
                "created_at": "2019-05-11T19:23:56.972Z",
                "updated_at": "2019-05-11T19:23:56.972Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 20,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.973Z",
                "created_at": "2019-05-11T19:23:56.974Z",
                "updated_at": "2019-05-11T19:23:56.974Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 21,
                "name": "Borvo the Hutt",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.974Z",
                "created_at": "2019-05-11T19:23:56.975Z",
                "updated_at": "2019-05-11T19:23:56.975Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 22,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.976Z",
                "created_at": "2019-05-11T19:23:56.977Z",
                "updated_at": "2019-05-11T19:23:56.977Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 23,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.978Z",
                "created_at": "2019-05-11T19:23:56.979Z",
                "updated_at": "2019-05-11T19:23:56.979Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 24,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.980Z",
                "created_at": "2019-05-11T19:23:56.980Z",
                "updated_at": "2019-05-11T19:23:56.980Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 25,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.981Z",
                "created_at": "2019-05-11T19:23:56.982Z",
                "updated_at": "2019-05-11T19:23:56.982Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 26,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.983Z",
                "created_at": "2019-05-11T19:23:56.984Z",
                "updated_at": "2019-05-11T19:23:56.984Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
                }
              },
              {
                "id": 27,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-05-18T19:23:56.985Z",
                "created_at": "2019-05-11T19:23:56.986Z",
                "updated_at": "2019-05-11T19:23:56.986Z",
                "todo": {
                  "id": 8,
                  "title": "velit",
                  "user_id": 10,
                  "created_at": "2019-05-11T19:23:56.949Z",
                  "updated_at": "2019-05-11T19:23:56.949Z"
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
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.019Z",
                "created_at": "2019-05-11T19:23:57.020Z",
                "updated_at": "2019-05-11T19:23:57.020Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 29,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.021Z",
                "created_at": "2019-05-11T19:23:57.022Z",
                "updated_at": "2019-05-11T19:23:57.022Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 30,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.024Z",
                "created_at": "2019-05-11T19:23:57.025Z",
                "updated_at": "2019-05-11T19:23:57.025Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 31,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.026Z",
                "created_at": "2019-05-11T19:23:57.027Z",
                "updated_at": "2019-05-11T19:23:57.027Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 32,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.028Z",
                "created_at": "2019-05-11T19:23:57.029Z",
                "updated_at": "2019-05-11T19:23:57.029Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 33,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.030Z",
                "created_at": "2019-05-11T19:23:57.031Z",
                "updated_at": "2019-05-11T19:23:57.031Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 34,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.032Z",
                "created_at": "2019-05-11T19:23:57.033Z",
                "updated_at": "2019-05-11T19:23:57.033Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 35,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.034Z",
                "created_at": "2019-05-11T19:23:57.035Z",
                "updated_at": "2019-05-11T19:23:57.035Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 36,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.036Z",
                "created_at": "2019-05-11T19:23:57.037Z",
                "updated_at": "2019-05-11T19:23:57.037Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 37,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.038Z",
                "created_at": "2019-05-11T19:23:57.039Z",
                "updated_at": "2019-05-11T19:23:57.039Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 38,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.040Z",
                "created_at": "2019-05-11T19:23:57.041Z",
                "updated_at": "2019-05-11T19:23:57.041Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 39,
                "name": "General Hux",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.042Z",
                "created_at": "2019-05-11T19:23:57.043Z",
                "updated_at": "2019-05-11T19:23:57.043Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 40,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.043Z",
                "created_at": "2019-05-11T19:23:57.044Z",
                "updated_at": "2019-05-11T19:23:57.044Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 41,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.045Z",
                "created_at": "2019-05-11T19:23:57.046Z",
                "updated_at": "2019-05-11T19:23:57.046Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 42,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.047Z",
                "created_at": "2019-05-11T19:23:57.048Z",
                "updated_at": "2019-05-11T19:23:57.048Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 43,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.049Z",
                "created_at": "2019-05-11T19:23:57.050Z",
                "updated_at": "2019-05-11T19:23:57.050Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 44,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.051Z",
                "created_at": "2019-05-11T19:23:57.052Z",
                "updated_at": "2019-05-11T19:23:57.052Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 45,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.052Z",
                "created_at": "2019-05-11T19:23:57.053Z",
                "updated_at": "2019-05-11T19:23:57.053Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 46,
                "name": "Watto",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.054Z",
                "created_at": "2019-05-11T19:23:57.055Z",
                "updated_at": "2019-05-11T19:23:57.055Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
                }
              },
              {
                "id": 47,
                "name": "General Hux",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-05-18T19:23:57.056Z",
                "created_at": "2019-05-11T19:23:57.057Z",
                "updated_at": "2019-05-11T19:23:57.057Z",
                "todo": {
                  "id": 9,
                  "title": "dolores",
                  "user_id": 11,
                  "created_at": "2019-05-11T19:23:57.018Z",
                  "updated_at": "2019-05-11T19:23:57.018Z"
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
              "name": "Panaka",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-05-18T19:23:57.166Z",
              "created_at": "2019-05-11T19:23:57.167Z",
              "updated_at": "2019-05-11T19:23:57.167Z",
              "todo": {
                "id": 12,
                "title": "sapiente",
                "user_id": 14,
                "created_at": "2019-05-11T19:23:57.165Z",
                "updated_at": "2019-05-11T19:23:57.165Z"
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
              "name": "Darth Maul",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-05-18T19:23:57.216Z",
              "created_at": "2019-05-11T19:23:57.217Z",
              "updated_at": "2019-05-11T19:23:57.217Z",
              "todo": {
                "id": 13,
                "title": "sequi",
                "user_id": 15,
                "created_at": "2019-05-11T19:23:57.215Z",
                "updated_at": "2019-05-11T19:23:57.215Z"
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
              "created_at": "2019-05-11T19:23:57.413Z",
              "updated_at": "2019-05-11T19:23:57.413Z",
              "todo": {
                "id": 16,
                "title": "dolore",
                "user_id": 18,
                "created_at": "2019-05-11T19:23:57.363Z",
                "updated_at": "2019-05-11T19:23:57.363Z"
              }
            }

+ Request returns status code 422
**POST**&nbsp;&nbsp;`/todos/17/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "#<ActiveModel::Errors:0x000056284699c018>"
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
              "deadline": "2019-05-18T19:23:57.472Z",
              "created_at": "2019-05-11T19:23:57.473Z",
              "updated_at": "2019-05-11T19:23:57.518Z",
              "todo": {
                "id": 18,
                "title": "quos",
                "user_id": 20,
                "created_at": "2019-05-11T19:23:57.471Z",
                "updated_at": "2019-05-11T19:23:57.471Z"
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
              "deadline": "2019-05-18T19:23:57.528Z",
              "created_at": "2019-05-11T19:23:57.529Z",
              "updated_at": "2019-05-11T19:23:57.566Z",
              "todo": {
                "id": 19,
                "title": "ut",
                "user_id": 21,
                "created_at": "2019-05-11T19:23:57.526Z",
                "updated_at": "2019-05-11T19:23:57.526Z"
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
                "title": "dicta",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.711Z",
                "updated_at": "2019-05-11T19:23:57.711Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 24,
                "title": "voluptas",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.713Z",
                "updated_at": "2019-05-11T19:23:57.713Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 25,
                "title": "molestiae",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.714Z",
                "updated_at": "2019-05-11T19:23:57.714Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 26,
                "title": "a",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.716Z",
                "updated_at": "2019-05-11T19:23:57.716Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 27,
                "title": "recusandae",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.718Z",
                "updated_at": "2019-05-11T19:23:57.718Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 28,
                "title": "saepe",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.719Z",
                "updated_at": "2019-05-11T19:23:57.719Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 29,
                "title": "optio",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.721Z",
                "updated_at": "2019-05-11T19:23:57.721Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 30,
                "title": "illum",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.722Z",
                "updated_at": "2019-05-11T19:23:57.722Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 31,
                "title": "ipsa",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.724Z",
                "updated_at": "2019-05-11T19:23:57.724Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
                }
              },
              {
                "id": 32,
                "title": "sunt",
                "user_id": 25,
                "created_at": "2019-05-11T19:23:57.725Z",
                "updated_at": "2019-05-11T19:23:57.725Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "William Rath",
                  "email": "laracartwright@ortiz.biz",
                  "password_digest": "$2a$04$QUuRZ88vl6Ab2KpUSJ8V/.C3RkRy8N9Mq0rkWideXjOiut9mdZoUy",
                  "created_at": "2019-05-11T19:23:57.709Z",
                  "updated_at": "2019-05-11T19:23:57.709Z"
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
                "title": "animi",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.754Z",
                "updated_at": "2019-05-11T19:23:57.754Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 34,
                "title": "dolor",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.756Z",
                "updated_at": "2019-05-11T19:23:57.756Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 35,
                "title": "beatae",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.758Z",
                "updated_at": "2019-05-11T19:23:57.758Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 36,
                "title": "tempore",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.759Z",
                "updated_at": "2019-05-11T19:23:57.759Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 37,
                "title": "iusto",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.761Z",
                "updated_at": "2019-05-11T19:23:57.761Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 38,
                "title": "et",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.763Z",
                "updated_at": "2019-05-11T19:23:57.763Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 39,
                "title": "excepturi",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.765Z",
                "updated_at": "2019-05-11T19:23:57.765Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 40,
                "title": "illum",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.766Z",
                "updated_at": "2019-05-11T19:23:57.766Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 41,
                "title": "omnis",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.768Z",
                "updated_at": "2019-05-11T19:23:57.768Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
                }
              },
              {
                "id": 42,
                "title": "vero",
                "user_id": 26,
                "created_at": "2019-05-11T19:23:57.770Z",
                "updated_at": "2019-05-11T19:23:57.770Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Ms. Garth Balistreri",
                  "email": "jefferson@lehner.com",
                  "password_digest": "$2a$04$GpJdPhkuzfxiut5G3MJ5L.keBYke/pXVm7Pa2PgVfkI68FiQ81UZS",
                  "created_at": "2019-05-11T19:23:57.752Z",
                  "updated_at": "2019-05-11T19:23:57.752Z"
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
              "title": "saepe",
              "user_id": 27,
              "created_at": "2019-05-11T19:23:57.791Z",
              "updated_at": "2019-05-11T19:23:57.791Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Eugene Mertz",
                "email": "kraig@macgyver.co",
                "password_digest": "$2a$04$MQ1CtrbTGhIW1SybAzZWYueyUUUfN7BdzmMB/uW.4SJcTxDocJaUG",
                "created_at": "2019-05-11T19:23:57.789Z",
                "updated_at": "2019-05-11T19:23:57.789Z"
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
              "title": "beatae",
              "user_id": 28,
              "created_at": "2019-05-11T19:23:57.816Z",
              "updated_at": "2019-05-11T19:23:57.816Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Miss Eladia Kautzer",
                "email": "chastity@botsfordstracke.biz",
                "password_digest": "$2a$04$rY66rCqxvrAQqUavBlloFuZrPoFOoQ6ouChpXrL7zjArzwPCFkjvi",
                "created_at": "2019-05-11T19:23:57.814Z",
                "updated_at": "2019-05-11T19:23:57.814Z"
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
              "created_at": "2019-05-11T19:23:57.907Z",
              "updated_at": "2019-05-11T19:23:57.907Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Sylvia Price",
                "email": "shirlee@blickhaley.io",
                "password_digest": "$2a$04$GbLje.T12XKjWVwD67QSm.kqEBa4I8J0ioCcHhebpQSJvX1JSBe56",
                "created_at": "2019-05-11T19:23:57.888Z",
                "updated_at": "2019-05-11T19:23:57.888Z"
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
              "created_at": "2019-05-11T19:23:57.933Z",
              "updated_at": "2019-05-11T19:23:57.933Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Miss Cherry Steuber",
                "email": "francinarice@auer.info",
                "password_digest": "$2a$04$5JyEOnHkJthf6F92RD.VbeRbynSl0oGBlpxnsP0k1kBbT.Adz4qwi",
                "created_at": "2019-05-11T19:23:57.913Z",
                "updated_at": "2019-05-11T19:23:57.913Z"
              }
            }

+ Request returns status code 422
**POST**&nbsp;&nbsp;`/todos`

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
              "message": "#<ActiveModel::Errors:0x00005628460edc50>"
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
              "created_at": "2019-05-11T19:23:57.966Z",
              "updated_at": "2019-05-11T19:23:57.985Z",
              "items": [
            
              ],
              "user": {
                "id": 34,
                "name": "Ms. Refugio Breitenberg",
                "email": "adolfotrantow@towne.com",
                "password_digest": "$2a$04$rOdcxzIt3NhxIzRIWthU6eO1iGXunFZzxgfd8ymxdOKufNUlkp7re",
                "created_at": "2019-05-11T19:23:57.964Z",
                "updated_at": "2019-05-11T19:23:57.964Z"
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
