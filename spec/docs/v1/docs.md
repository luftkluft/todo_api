

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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTI0ODUwNDJ9.geeeeHFvY8i3pXdPCOQbI6vryX6E2lP9dGXsoxXbo2Y"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "jim@wintheiser.org",
              "password": "B75aDpYpFo1h4x"
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
              "name": "Edwina Leffler",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMiwiZXhwIjoxNTUyNDg1MDQzfQ.kitsnCOpqRUuF1DAAFjnVkIzHrMgEFsgtvtnfy7AK2I"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Carissa Reilly",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMywiZXhwIjoxNTUyNDg1MDQzfQ.i4PLfhCM7ywrvV4966QiciNi04-br2chBrK4iinGD6E"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Bo Stracke",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwiZXhwIjoxNTUyNDg1MDQzfQ.n4XhNzTRyErgIhto4hX4sRy1JLfVGKoLNex09FaSJJc"
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
                "name": "Leia Organa",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.010Z",
                "updated_at": "2019-03-12T13:50:43.010Z"
              },
              {
                "id": 2,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.013Z",
                "updated_at": "2019-03-12T13:50:43.013Z"
              },
              {
                "id": 3,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.015Z",
                "updated_at": "2019-03-12T13:50:43.015Z"
              },
              {
                "id": 4,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.017Z",
                "updated_at": "2019-03-12T13:50:43.017Z"
              },
              {
                "id": 5,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.018Z",
                "updated_at": "2019-03-12T13:50:43.018Z"
              },
              {
                "id": 6,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.020Z",
                "updated_at": "2019-03-12T13:50:43.020Z"
              },
              {
                "id": 7,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.022Z",
                "updated_at": "2019-03-12T13:50:43.022Z"
              },
              {
                "id": 8,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.023Z",
                "updated_at": "2019-03-12T13:50:43.023Z"
              },
              {
                "id": 9,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.025Z",
                "updated_at": "2019-03-12T13:50:43.025Z"
              },
              {
                "id": 10,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.026Z",
                "updated_at": "2019-03-12T13:50:43.026Z"
              },
              {
                "id": 11,
                "name": "Bendu",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.028Z",
                "updated_at": "2019-03-12T13:50:43.028Z"
              },
              {
                "id": 12,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.030Z",
                "updated_at": "2019-03-12T13:50:43.030Z"
              },
              {
                "id": 13,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.031Z",
                "updated_at": "2019-03-12T13:50:43.031Z"
              },
              {
                "id": 14,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.033Z",
                "updated_at": "2019-03-12T13:50:43.033Z"
              },
              {
                "id": 15,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.035Z",
                "updated_at": "2019-03-12T13:50:43.035Z"
              },
              {
                "id": 16,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.037Z",
                "updated_at": "2019-03-12T13:50:43.037Z"
              },
              {
                "id": 17,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.038Z",
                "updated_at": "2019-03-12T13:50:43.038Z"
              },
              {
                "id": 18,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.040Z",
                "updated_at": "2019-03-12T13:50:43.040Z"
              },
              {
                "id": 19,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.042Z",
                "updated_at": "2019-03-12T13:50:43.042Z"
              },
              {
                "id": 20,
                "name": "Han Solo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-12T13:50:43.044Z",
                "updated_at": "2019-03-12T13:50:43.044Z"
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
                "name": "Wedge Antilles",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.067Z",
                "updated_at": "2019-03-12T13:50:43.067Z"
              },
              {
                "id": 22,
                "name": "Panaka",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.069Z",
                "updated_at": "2019-03-12T13:50:43.069Z"
              },
              {
                "id": 23,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.070Z",
                "updated_at": "2019-03-12T13:50:43.070Z"
              },
              {
                "id": 24,
                "name": "Kylo Ren",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.072Z",
                "updated_at": "2019-03-12T13:50:43.072Z"
              },
              {
                "id": 25,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.074Z",
                "updated_at": "2019-03-12T13:50:43.074Z"
              },
              {
                "id": 26,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.076Z",
                "updated_at": "2019-03-12T13:50:43.076Z"
              },
              {
                "id": 27,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.077Z",
                "updated_at": "2019-03-12T13:50:43.077Z"
              },
              {
                "id": 28,
                "name": "Finn",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.079Z",
                "updated_at": "2019-03-12T13:50:43.079Z"
              },
              {
                "id": 29,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.081Z",
                "updated_at": "2019-03-12T13:50:43.081Z"
              },
              {
                "id": 30,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.082Z",
                "updated_at": "2019-03-12T13:50:43.082Z"
              },
              {
                "id": 31,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.084Z",
                "updated_at": "2019-03-12T13:50:43.084Z"
              },
              {
                "id": 32,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.086Z",
                "updated_at": "2019-03-12T13:50:43.086Z"
              },
              {
                "id": 33,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.087Z",
                "updated_at": "2019-03-12T13:50:43.087Z"
              },
              {
                "id": 34,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.089Z",
                "updated_at": "2019-03-12T13:50:43.089Z"
              },
              {
                "id": 35,
                "name": "Greedo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.091Z",
                "updated_at": "2019-03-12T13:50:43.091Z"
              },
              {
                "id": 36,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.092Z",
                "updated_at": "2019-03-12T13:50:43.092Z"
              },
              {
                "id": 37,
                "name": "Rey",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.094Z",
                "updated_at": "2019-03-12T13:50:43.094Z"
              },
              {
                "id": 38,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.096Z",
                "updated_at": "2019-03-12T13:50:43.096Z"
              },
              {
                "id": 39,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.097Z",
                "updated_at": "2019-03-12T13:50:43.097Z"
              },
              {
                "id": 40,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-12T13:50:43.099Z",
                "updated_at": "2019-03-12T13:50:43.099Z"
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
              "name": "Maz Kanata",
              "done": false,
              "todo_id": 5,
              "created_at": "2019-03-12T13:50:43.187Z",
              "updated_at": "2019-03-12T13:50:43.187Z"
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
              "name": "Luke Skywalker",
              "done": false,
              "todo_id": 6,
              "created_at": "2019-03-12T13:50:43.226Z",
              "updated_at": "2019-03-12T13:50:43.226Z"
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
              "title": "a",
              "created_by": "11",
              "created_at": "2019-03-12T13:50:43.335Z",
              "updated_at": "2019-03-12T13:50:43.335Z",
              "items": [
                {
                  "id": 161,
                  "name": "Grand Moff Tarkin",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.336Z",
                  "updated_at": "2019-03-12T13:50:43.336Z"
                },
                {
                  "id": 162,
                  "name": "Admiral Ackbar",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.338Z",
                  "updated_at": "2019-03-12T13:50:43.338Z"
                },
                {
                  "id": 163,
                  "name": "Supreme Leader Snoke",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.339Z",
                  "updated_at": "2019-03-12T13:50:43.339Z"
                },
                {
                  "id": 164,
                  "name": "Luke Skywalker",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.341Z",
                  "updated_at": "2019-03-12T13:50:43.341Z"
                },
                {
                  "id": 165,
                  "name": "Vice Admiral Holdo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.342Z",
                  "updated_at": "2019-03-12T13:50:43.342Z"
                },
                {
                  "id": 166,
                  "name": "Mace Windu",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.343Z",
                  "updated_at": "2019-03-12T13:50:43.343Z"
                },
                {
                  "id": 167,
                  "name": "Ezra Bridger",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.345Z",
                  "updated_at": "2019-03-12T13:50:43.345Z"
                },
                {
                  "id": 168,
                  "name": "Borvo the Hutt",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.346Z",
                  "updated_at": "2019-03-12T13:50:43.346Z"
                },
                {
                  "id": 169,
                  "name": "Greedo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.348Z",
                  "updated_at": "2019-03-12T13:50:43.348Z"
                },
                {
                  "id": 170,
                  "name": "Kylo Ren",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.349Z",
                  "updated_at": "2019-03-12T13:50:43.349Z"
                },
                {
                  "id": 171,
                  "name": "Galen Erso",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.351Z",
                  "updated_at": "2019-03-12T13:50:43.351Z"
                },
                {
                  "id": 172,
                  "name": "Lyra Erso",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.352Z",
                  "updated_at": "2019-03-12T13:50:43.352Z"
                },
                {
                  "id": 173,
                  "name": "Rose Tico",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.353Z",
                  "updated_at": "2019-03-12T13:50:43.353Z"
                },
                {
                  "id": 174,
                  "name": "Captain Phasma",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.355Z",
                  "updated_at": "2019-03-12T13:50:43.355Z"
                },
                {
                  "id": 175,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.356Z",
                  "updated_at": "2019-03-12T13:50:43.356Z"
                },
                {
                  "id": 176,
                  "name": "Supreme Leader Snoke",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.357Z",
                  "updated_at": "2019-03-12T13:50:43.357Z"
                },
                {
                  "id": 177,
                  "name": "Yoda",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.359Z",
                  "updated_at": "2019-03-12T13:50:43.359Z"
                },
                {
                  "id": 178,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.360Z",
                  "updated_at": "2019-03-12T13:50:43.360Z"
                },
                {
                  "id": 179,
                  "name": "Jango Fett",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.362Z",
                  "updated_at": "2019-03-12T13:50:43.362Z"
                },
                {
                  "id": 180,
                  "name": "Greedo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.363Z",
                  "updated_at": "2019-03-12T13:50:43.363Z"
                },
                {
                  "id": 181,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-12T13:50:43.366Z",
                  "updated_at": "2019-03-12T13:50:43.366Z"
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
                "title": "suscipit",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.689Z",
                "updated_at": "2019-03-12T13:50:43.689Z",
                "items": [
            
                ]
              },
              {
                "id": 18,
                "title": "iure",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.691Z",
                "updated_at": "2019-03-12T13:50:43.691Z",
                "items": [
            
                ]
              },
              {
                "id": 19,
                "title": "id",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.692Z",
                "updated_at": "2019-03-12T13:50:43.692Z",
                "items": [
            
                ]
              },
              {
                "id": 20,
                "title": "et",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.694Z",
                "updated_at": "2019-03-12T13:50:43.694Z",
                "items": [
            
                ]
              },
              {
                "id": 21,
                "title": "quaerat",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.695Z",
                "updated_at": "2019-03-12T13:50:43.695Z",
                "items": [
            
                ]
              },
              {
                "id": 22,
                "title": "optio",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.696Z",
                "updated_at": "2019-03-12T13:50:43.696Z",
                "items": [
            
                ]
              },
              {
                "id": 23,
                "title": "tenetur",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.698Z",
                "updated_at": "2019-03-12T13:50:43.698Z",
                "items": [
            
                ]
              },
              {
                "id": 24,
                "title": "veniam",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.699Z",
                "updated_at": "2019-03-12T13:50:43.699Z",
                "items": [
            
                ]
              },
              {
                "id": 25,
                "title": "dolor",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.700Z",
                "updated_at": "2019-03-12T13:50:43.700Z",
                "items": [
            
                ]
              },
              {
                "id": 26,
                "title": "repellat",
                "created_by": "19",
                "created_at": "2019-03-12T13:50:43.702Z",
                "updated_at": "2019-03-12T13:50:43.702Z",
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
                "title": "sunt",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.725Z",
                "updated_at": "2019-03-12T13:50:43.725Z",
                "items": [
            
                ]
              },
              {
                "id": 28,
                "title": "aut",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.726Z",
                "updated_at": "2019-03-12T13:50:43.726Z",
                "items": [
            
                ]
              },
              {
                "id": 29,
                "title": "reiciendis",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.727Z",
                "updated_at": "2019-03-12T13:50:43.727Z",
                "items": [
            
                ]
              },
              {
                "id": 30,
                "title": "hic",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.728Z",
                "updated_at": "2019-03-12T13:50:43.728Z",
                "items": [
            
                ]
              },
              {
                "id": 31,
                "title": "porro",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.730Z",
                "updated_at": "2019-03-12T13:50:43.730Z",
                "items": [
            
                ]
              },
              {
                "id": 32,
                "title": "ut",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.731Z",
                "updated_at": "2019-03-12T13:50:43.731Z",
                "items": [
            
                ]
              },
              {
                "id": 33,
                "title": "maxime",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.733Z",
                "updated_at": "2019-03-12T13:50:43.733Z",
                "items": [
            
                ]
              },
              {
                "id": 34,
                "title": "veniam",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.734Z",
                "updated_at": "2019-03-12T13:50:43.734Z",
                "items": [
            
                ]
              },
              {
                "id": 35,
                "title": "sunt",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.735Z",
                "updated_at": "2019-03-12T13:50:43.735Z",
                "items": [
            
                ]
              },
              {
                "id": 36,
                "title": "esse",
                "created_by": "20",
                "created_at": "2019-03-12T13:50:43.736Z",
                "updated_at": "2019-03-12T13:50:43.736Z",
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
              "title": "aut",
              "created_by": "21",
              "created_at": "2019-03-12T13:50:43.757Z",
              "updated_at": "2019-03-12T13:50:43.757Z",
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
              "title": "voluptates",
              "created_by": "22",
              "created_at": "2019-03-12T13:50:43.775Z",
              "updated_at": "2019-03-12T13:50:43.775Z",
              "items": [
            
              ]
            }

+ Request returns status code 404
**GET**&nbsp;&nbsp;`/todos/100`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Todo with 'id'=100"
            }

+ Request returns a not found message
**GET**&nbsp;&nbsp;`/todos/100`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Couldn't find Todo with 'id'=100"
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
              "created_at": "2019-03-12T13:50:43.840Z",
              "updated_at": "2019-03-12T13:50:43.840Z",
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
              "created_at": "2019-03-12T13:50:43.859Z",
              "updated_at": "2019-03-12T13:50:43.859Z",
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
