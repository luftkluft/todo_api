

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
              "email": "foo@bar.com",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTMxMDA0MDF9.xUSrMpsQUWTsFzEky89Bdi3rK-ltwvJkcu-MgZ_5dmo"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "gustavorolfson@schuppewunsch.co",
              "password": "K8P15fK28"
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
              "name": "Ms. Davida Lind",
              "email": "foo@bar.com",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMiwiZXhwIjoxNTUzMTAwNDAyfQ.MIQZQQnY0NEzQ2hcooGUosDuPdTqV6OtzDqEggPFg-w"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Leland Turner",
              "email": "foo@bar.com",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMywiZXhwIjoxNTUzMTAwNDAyfQ.x5yw11CO6XwEKtjGvG2v2e_cWfJnBbzsnOUtOtYMYYM"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Yoshie Lindgren DVM",
              "email": "foo@bar.com",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwiZXhwIjoxNTUzMTAwNDAyfQ.UnlSsDlz5wJu93tGK2QzV9XeEp462tG3ENpJKNE-3Ts"
            }

+ Request does not create a new user
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Validation failed: Password can't be blank, Name can't be blank, Email can't be blank, Password digest can't be blank"
            }

+ Request returns failure message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Validation failed: Password can't be blank, Name can't be blank, Email can't be blank, Password digest can't be blank"
            }

## Items [/todos/:todo_id/items/:id]


### Get todos/:todo_id/items [GET /todos/{todo_id}/items]

+ Parameters
    + todo_id: `1` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/1/items`

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
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.613Z",
                "updated_at": "2019-03-19T16:46:41.613Z"
              },
              {
                "id": 2,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.616Z",
                "updated_at": "2019-03-19T16:46:41.616Z"
              },
              {
                "id": 3,
                "name": "Chewbacca",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.626Z",
                "updated_at": "2019-03-19T16:46:41.626Z"
              },
              {
                "id": 4,
                "name": "Rey",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.628Z",
                "updated_at": "2019-03-19T16:46:41.628Z"
              },
              {
                "id": 5,
                "name": "Finn",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.630Z",
                "updated_at": "2019-03-19T16:46:41.630Z"
              },
              {
                "id": 6,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.632Z",
                "updated_at": "2019-03-19T16:46:41.632Z"
              },
              {
                "id": 7,
                "name": "Chewbacca",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.634Z",
                "updated_at": "2019-03-19T16:46:41.634Z"
              },
              {
                "id": 8,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.636Z",
                "updated_at": "2019-03-19T16:46:41.636Z"
              },
              {
                "id": 9,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.638Z",
                "updated_at": "2019-03-19T16:46:41.638Z"
              },
              {
                "id": 10,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.640Z",
                "updated_at": "2019-03-19T16:46:41.640Z"
              },
              {
                "id": 11,
                "name": "Borvo the Hutt",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.642Z",
                "updated_at": "2019-03-19T16:46:41.642Z"
              },
              {
                "id": 12,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.644Z",
                "updated_at": "2019-03-19T16:46:41.644Z"
              },
              {
                "id": 13,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.646Z",
                "updated_at": "2019-03-19T16:46:41.646Z"
              },
              {
                "id": 14,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.648Z",
                "updated_at": "2019-03-19T16:46:41.648Z"
              },
              {
                "id": 15,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.650Z",
                "updated_at": "2019-03-19T16:46:41.650Z"
              },
              {
                "id": 16,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.652Z",
                "updated_at": "2019-03-19T16:46:41.652Z"
              },
              {
                "id": 17,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.654Z",
                "updated_at": "2019-03-19T16:46:41.654Z"
              },
              {
                "id": 18,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.656Z",
                "updated_at": "2019-03-19T16:46:41.656Z"
              },
              {
                "id": 19,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.658Z",
                "updated_at": "2019-03-19T16:46:41.658Z"
              },
              {
                "id": 20,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-19T16:46:41.660Z",
                "updated_at": "2019-03-19T16:46:41.660Z"
              }
            ]

+ Request returns all todo items
**GET**&nbsp;&nbsp;`/todos/2/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
              {
                "id": 21,
                "name": "Chewbacca",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.684Z",
                "updated_at": "2019-03-19T16:46:41.684Z"
              },
              {
                "id": 22,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.686Z",
                "updated_at": "2019-03-19T16:46:41.686Z"
              },
              {
                "id": 23,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.688Z",
                "updated_at": "2019-03-19T16:46:41.688Z"
              },
              {
                "id": 24,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.689Z",
                "updated_at": "2019-03-19T16:46:41.689Z"
              },
              {
                "id": 25,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.691Z",
                "updated_at": "2019-03-19T16:46:41.691Z"
              },
              {
                "id": 26,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.692Z",
                "updated_at": "2019-03-19T16:46:41.692Z"
              },
              {
                "id": 27,
                "name": "Lyra Erso",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.694Z",
                "updated_at": "2019-03-19T16:46:41.694Z"
              },
              {
                "id": 28,
                "name": "Borvo the Hutt",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.695Z",
                "updated_at": "2019-03-19T16:46:41.695Z"
              },
              {
                "id": 29,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.697Z",
                "updated_at": "2019-03-19T16:46:41.697Z"
              },
              {
                "id": 30,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.698Z",
                "updated_at": "2019-03-19T16:46:41.698Z"
              },
              {
                "id": 31,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.700Z",
                "updated_at": "2019-03-19T16:46:41.700Z"
              },
              {
                "id": 32,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.702Z",
                "updated_at": "2019-03-19T16:46:41.702Z"
              },
              {
                "id": 33,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.704Z",
                "updated_at": "2019-03-19T16:46:41.704Z"
              },
              {
                "id": 34,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.706Z",
                "updated_at": "2019-03-19T16:46:41.706Z"
              },
              {
                "id": 35,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.707Z",
                "updated_at": "2019-03-19T16:46:41.707Z"
              },
              {
                "id": 36,
                "name": "Bendu",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.709Z",
                "updated_at": "2019-03-19T16:46:41.709Z"
              },
              {
                "id": 37,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.711Z",
                "updated_at": "2019-03-19T16:46:41.711Z"
              },
              {
                "id": 38,
                "name": "Finn",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.713Z",
                "updated_at": "2019-03-19T16:46:41.713Z"
              },
              {
                "id": 39,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.714Z",
                "updated_at": "2019-03-19T16:46:41.714Z"
              },
              {
                "id": 40,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-19T16:46:41.716Z",
                "updated_at": "2019-03-19T16:46:41.716Z"
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
    + todo_id: `5` (number, required)
    + id: `81` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/5/items/81`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 81,
              "name": "Jango Fett",
              "done": false,
              "todo_id": 5,
              "created_at": "2019-03-19T16:46:41.814Z",
              "updated_at": "2019-03-19T16:46:41.814Z"
            }

+ Request returns the item
**GET**&nbsp;&nbsp;`/todos/6/items/101`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 101,
              "name": "Sabine Wren",
              "done": false,
              "todo_id": 6,
              "created_at": "2019-03-19T16:46:41.854Z",
              "updated_at": "2019-03-19T16:46:41.854Z"
            }

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/todos/7/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Item with [WHERE \"items\".\"todo_id\" = $1 AND \"items\".\"id\" = $2]"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/todos/8/items/0`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Item with [WHERE \"items\".\"todo_id\" = $1 AND \"items\".\"id\" = $2]"
            }

### Post todos/:todo_id/items [POST /todos/{todo_id}/items]

+ Parameters
    + todo_id: `9` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos/9/items`

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
              "id": 9,
              "title": "qui",
              "created_by": "11",
              "created_at": "2019-03-19T16:46:41.973Z",
              "updated_at": "2019-03-19T16:46:41.973Z",
              "items": [
                {
                  "id": 161,
                  "name": "Admiral Ackbar",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.974Z",
                  "updated_at": "2019-03-19T16:46:41.974Z"
                },
                {
                  "id": 162,
                  "name": "Han Solo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.976Z",
                  "updated_at": "2019-03-19T16:46:41.976Z"
                },
                {
                  "id": 163,
                  "name": "Sebulba",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.977Z",
                  "updated_at": "2019-03-19T16:46:41.977Z"
                },
                {
                  "id": 164,
                  "name": "Shmi Skywalker",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.979Z",
                  "updated_at": "2019-03-19T16:46:41.979Z"
                },
                {
                  "id": 165,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.980Z",
                  "updated_at": "2019-03-19T16:46:41.980Z"
                },
                {
                  "id": 166,
                  "name": "Greedo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.982Z",
                  "updated_at": "2019-03-19T16:46:41.982Z"
                },
                {
                  "id": 167,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.984Z",
                  "updated_at": "2019-03-19T16:46:41.984Z"
                },
                {
                  "id": 168,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.986Z",
                  "updated_at": "2019-03-19T16:46:41.986Z"
                },
                {
                  "id": 169,
                  "name": "Leia Organa",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.987Z",
                  "updated_at": "2019-03-19T16:46:41.987Z"
                },
                {
                  "id": 170,
                  "name": "Kanan Jarrus",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.989Z",
                  "updated_at": "2019-03-19T16:46:41.989Z"
                },
                {
                  "id": 171,
                  "name": "Galen Erso",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.991Z",
                  "updated_at": "2019-03-19T16:46:41.991Z"
                },
                {
                  "id": 172,
                  "name": "Chewbacca",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.992Z",
                  "updated_at": "2019-03-19T16:46:41.992Z"
                },
                {
                  "id": 173,
                  "name": "Borvo the Hutt",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.994Z",
                  "updated_at": "2019-03-19T16:46:41.994Z"
                },
                {
                  "id": 174,
                  "name": "Anakin Skywalker",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.996Z",
                  "updated_at": "2019-03-19T16:46:41.996Z"
                },
                {
                  "id": 175,
                  "name": "Rose Tico",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.997Z",
                  "updated_at": "2019-03-19T16:46:41.997Z"
                },
                {
                  "id": 176,
                  "name": "Sebulba",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:41.999Z",
                  "updated_at": "2019-03-19T16:46:41.999Z"
                },
                {
                  "id": 177,
                  "name": "Watto",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:42.000Z",
                  "updated_at": "2019-03-19T16:46:42.000Z"
                },
                {
                  "id": 178,
                  "name": "Sheev Palpatine",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:42.002Z",
                  "updated_at": "2019-03-19T16:46:42.002Z"
                },
                {
                  "id": 179,
                  "name": "Sabine Wren",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:42.003Z",
                  "updated_at": "2019-03-19T16:46:42.003Z"
                },
                {
                  "id": 180,
                  "name": "Ahsoka Tano",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:42.005Z",
                  "updated_at": "2019-03-19T16:46:42.005Z"
                },
                {
                  "id": 181,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-19T16:46:42.008Z",
                  "updated_at": "2019-03-19T16:46:42.008Z"
                }
              ]
            }

+ Request returns status code 422
**POST**&nbsp;&nbsp;`/todos/10/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Validation failed: Name can't be blank"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/todos/11/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Validation failed: Name can't be blank"
            }

### Put todos/:todo_id/items/:id [PUT /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `12` (number, required)
    + id: `222` (number, required)

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/todos/12/items/222`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 204

+ Request updates the item
**PUT**&nbsp;&nbsp;`/todos/13/items/242`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 204

+ Request returns status code 404
**PUT**&nbsp;&nbsp;`/todos/14/items/0`

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
              "message": "Couldn't find Item with [WHERE \"items\".\"todo_id\" = $1 AND \"items\".\"id\" = $2]"
            }

+ Request returns a not found message
**PUT**&nbsp;&nbsp;`/todos/15/items/0`

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
              "message": "Couldn't find Item with [WHERE \"items\".\"todo_id\" = $1 AND \"items\".\"id\" = $2]"
            }

### Delete todos/:todo_id/items/:id [DELETE /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `16` (number, required)
    + id: `302` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/16/items/302`

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
                "id": 17,
                "title": "eos",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.346Z",
                "updated_at": "2019-03-19T16:46:42.346Z",
                "items": [
            
                ]
              },
              {
                "id": 18,
                "title": "recusandae",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.347Z",
                "updated_at": "2019-03-19T16:46:42.347Z",
                "items": [
            
                ]
              },
              {
                "id": 19,
                "title": "magnam",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.348Z",
                "updated_at": "2019-03-19T16:46:42.348Z",
                "items": [
            
                ]
              },
              {
                "id": 20,
                "title": "modi",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.350Z",
                "updated_at": "2019-03-19T16:46:42.350Z",
                "items": [
            
                ]
              },
              {
                "id": 21,
                "title": "odit",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.351Z",
                "updated_at": "2019-03-19T16:46:42.351Z",
                "items": [
            
                ]
              },
              {
                "id": 22,
                "title": "voluptatum",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.352Z",
                "updated_at": "2019-03-19T16:46:42.352Z",
                "items": [
            
                ]
              },
              {
                "id": 23,
                "title": "repellat",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.353Z",
                "updated_at": "2019-03-19T16:46:42.353Z",
                "items": [
            
                ]
              },
              {
                "id": 24,
                "title": "quidem",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.354Z",
                "updated_at": "2019-03-19T16:46:42.354Z",
                "items": [
            
                ]
              },
              {
                "id": 25,
                "title": "occaecati",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.355Z",
                "updated_at": "2019-03-19T16:46:42.355Z",
                "items": [
            
                ]
              },
              {
                "id": 26,
                "title": "inventore",
                "created_by": "19",
                "created_at": "2019-03-19T16:46:42.357Z",
                "updated_at": "2019-03-19T16:46:42.357Z",
                "items": [
            
                ]
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
                "id": 27,
                "title": "nesciunt",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.375Z",
                "updated_at": "2019-03-19T16:46:42.375Z",
                "items": [
            
                ]
              },
              {
                "id": 28,
                "title": "quia",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.376Z",
                "updated_at": "2019-03-19T16:46:42.376Z",
                "items": [
            
                ]
              },
              {
                "id": 29,
                "title": "esse",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.377Z",
                "updated_at": "2019-03-19T16:46:42.377Z",
                "items": [
            
                ]
              },
              {
                "id": 30,
                "title": "quaerat",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.378Z",
                "updated_at": "2019-03-19T16:46:42.378Z",
                "items": [
            
                ]
              },
              {
                "id": 31,
                "title": "ratione",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.380Z",
                "updated_at": "2019-03-19T16:46:42.380Z",
                "items": [
            
                ]
              },
              {
                "id": 32,
                "title": "expedita",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.381Z",
                "updated_at": "2019-03-19T16:46:42.381Z",
                "items": [
            
                ]
              },
              {
                "id": 33,
                "title": "possimus",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.382Z",
                "updated_at": "2019-03-19T16:46:42.382Z",
                "items": [
            
                ]
              },
              {
                "id": 34,
                "title": "assumenda",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.383Z",
                "updated_at": "2019-03-19T16:46:42.383Z",
                "items": [
            
                ]
              },
              {
                "id": 35,
                "title": "atque",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.384Z",
                "updated_at": "2019-03-19T16:46:42.384Z",
                "items": [
            
                ]
              },
              {
                "id": 36,
                "title": "atque",
                "created_by": "20",
                "created_at": "2019-03-19T16:46:42.385Z",
                "updated_at": "2019-03-19T16:46:42.385Z",
                "items": [
            
                ]
              }
            ]

### Get todos/:id [GET /todos/{id}]

+ Parameters
    + id: `37` (number, required)

+ Request returns the todo
**GET**&nbsp;&nbsp;`/todos/37`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 37,
              "title": "vitae",
              "created_by": "21",
              "created_at": "2019-03-19T16:46:42.402Z",
              "updated_at": "2019-03-19T16:46:42.402Z",
              "items": [
            
              ]
            }

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/47`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 47,
              "title": "officia",
              "created_by": "22",
              "created_at": "2019-03-19T16:46:42.421Z",
              "updated_at": "2019-03-19T16:46:42.421Z",
              "items": [
            
              ]
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
              "created_by": "25"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 87,
              "title": "Learn Elm",
              "created_by": "25",
              "created_at": "2019-03-19T16:46:42.484Z",
              "updated_at": "2019-03-19T16:46:42.484Z",
              "items": [
            
              ]
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Learn Elm",
              "created_by": "26"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 98,
              "title": "Learn Elm",
              "created_by": "26",
              "created_at": "2019-03-19T16:46:42.503Z",
              "updated_at": "2019-03-19T16:46:42.503Z",
              "items": [
            
              ]
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
              "message": "Validation failed: Title can't be blank"
            }

+ Request returns a validation failure message
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
              "message": "Validation failed: Title can't be blank"
            }

### Put todos/:id [PUT /todos/{id}]

+ Parameters
    + id: `119` (number, required)

+ Request updates the record
**PUT**&nbsp;&nbsp;`/todos/119`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Shopping"
            }

+ Response 204

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/todos/129`

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
    + id: `139` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/139`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204
