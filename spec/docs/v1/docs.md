

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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTE1NjA2MDR9.H7QsxiPrPvcLpGrP2yqvICqElsiGeUExxm2Cb-xRG0A"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "david@paucek.org",
              "password": "59ZnYySjW5"
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
              "name": "Jerry Marquardt",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMiwiZXhwIjoxNTUxNTYwNjA1fQ.4uUpdG5oMDq6PCqRr9qvfVR5RRUsjQnf-Zbg_DsqedY"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Ed Kuvalis",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMywiZXhwIjoxNTUxNTYwNjA1fQ.YKt5cmnfDjG3V0cJ9Cb5pZBpkiT14VSxXKcg7VGTgF8"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Charlyn Leannon",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwiZXhwIjoxNTUxNTYwNjA1fQ.G9S98u94oi7nGoMZ6lUi1MIN564tIfbmlGSJLaLxFH8"
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
                "name": "General Hux",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.192Z",
                "updated_at": "2019-03-01T21:03:24.192Z"
              },
              {
                "id": 2,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.195Z",
                "updated_at": "2019-03-01T21:03:24.195Z"
              },
              {
                "id": 3,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.197Z",
                "updated_at": "2019-03-01T21:03:24.197Z"
              },
              {
                "id": 4,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.200Z",
                "updated_at": "2019-03-01T21:03:24.200Z"
              },
              {
                "id": 5,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.202Z",
                "updated_at": "2019-03-01T21:03:24.202Z"
              },
              {
                "id": 6,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.204Z",
                "updated_at": "2019-03-01T21:03:24.204Z"
              },
              {
                "id": 7,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.206Z",
                "updated_at": "2019-03-01T21:03:24.206Z"
              },
              {
                "id": 8,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.208Z",
                "updated_at": "2019-03-01T21:03:24.208Z"
              },
              {
                "id": 9,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.210Z",
                "updated_at": "2019-03-01T21:03:24.210Z"
              },
              {
                "id": 10,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.212Z",
                "updated_at": "2019-03-01T21:03:24.212Z"
              },
              {
                "id": 11,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.214Z",
                "updated_at": "2019-03-01T21:03:24.214Z"
              },
              {
                "id": 12,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.215Z",
                "updated_at": "2019-03-01T21:03:24.215Z"
              },
              {
                "id": 13,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.217Z",
                "updated_at": "2019-03-01T21:03:24.217Z"
              },
              {
                "id": 14,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.218Z",
                "updated_at": "2019-03-01T21:03:24.218Z"
              },
              {
                "id": 15,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.220Z",
                "updated_at": "2019-03-01T21:03:24.220Z"
              },
              {
                "id": 16,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.221Z",
                "updated_at": "2019-03-01T21:03:24.221Z"
              },
              {
                "id": 17,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.223Z",
                "updated_at": "2019-03-01T21:03:24.223Z"
              },
              {
                "id": 18,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.224Z",
                "updated_at": "2019-03-01T21:03:24.224Z"
              },
              {
                "id": 19,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.227Z",
                "updated_at": "2019-03-01T21:03:24.227Z"
              },
              {
                "id": 20,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:03:24.229Z",
                "updated_at": "2019-03-01T21:03:24.229Z"
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
                "name": "Jyn Erso",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.256Z",
                "updated_at": "2019-03-01T21:03:24.256Z"
              },
              {
                "id": 22,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.258Z",
                "updated_at": "2019-03-01T21:03:24.258Z"
              },
              {
                "id": 23,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.260Z",
                "updated_at": "2019-03-01T21:03:24.260Z"
              },
              {
                "id": 24,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.262Z",
                "updated_at": "2019-03-01T21:03:24.262Z"
              },
              {
                "id": 25,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.264Z",
                "updated_at": "2019-03-01T21:03:24.264Z"
              },
              {
                "id": 26,
                "name": "Ki-Adi-Mundi",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.265Z",
                "updated_at": "2019-03-01T21:03:24.265Z"
              },
              {
                "id": 27,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.267Z",
                "updated_at": "2019-03-01T21:03:24.267Z"
              },
              {
                "id": 28,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.268Z",
                "updated_at": "2019-03-01T21:03:24.268Z"
              },
              {
                "id": 29,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.270Z",
                "updated_at": "2019-03-01T21:03:24.270Z"
              },
              {
                "id": 30,
                "name": "Greedo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.272Z",
                "updated_at": "2019-03-01T21:03:24.272Z"
              },
              {
                "id": 31,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.273Z",
                "updated_at": "2019-03-01T21:03:24.273Z"
              },
              {
                "id": 32,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.275Z",
                "updated_at": "2019-03-01T21:03:24.275Z"
              },
              {
                "id": 33,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.276Z",
                "updated_at": "2019-03-01T21:03:24.276Z"
              },
              {
                "id": 34,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.278Z",
                "updated_at": "2019-03-01T21:03:24.278Z"
              },
              {
                "id": 35,
                "name": "Greedo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.280Z",
                "updated_at": "2019-03-01T21:03:24.280Z"
              },
              {
                "id": 36,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.281Z",
                "updated_at": "2019-03-01T21:03:24.281Z"
              },
              {
                "id": 37,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.283Z",
                "updated_at": "2019-03-01T21:03:24.283Z"
              },
              {
                "id": 38,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.284Z",
                "updated_at": "2019-03-01T21:03:24.284Z"
              },
              {
                "id": 39,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.286Z",
                "updated_at": "2019-03-01T21:03:24.286Z"
              },
              {
                "id": 40,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:03:24.287Z",
                "updated_at": "2019-03-01T21:03:24.287Z"
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
              "name": "Darth Maul",
              "done": false,
              "todo_id": 5,
              "created_at": "2019-03-01T21:03:24.381Z",
              "updated_at": "2019-03-01T21:03:24.381Z"
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
              "name": "Bail Organa",
              "done": false,
              "todo_id": 6,
              "created_at": "2019-03-01T21:03:24.424Z",
              "updated_at": "2019-03-01T21:03:24.424Z"
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
              "title": "id",
              "created_by": "11",
              "created_at": "2019-03-01T21:03:24.551Z",
              "updated_at": "2019-03-01T21:03:24.551Z",
              "items": [
                {
                  "id": 161,
                  "name": "Sebulba",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.553Z",
                  "updated_at": "2019-03-01T21:03:24.553Z"
                },
                {
                  "id": 162,
                  "name": "Hera Syndulla",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.554Z",
                  "updated_at": "2019-03-01T21:03:24.554Z"
                },
                {
                  "id": 163,
                  "name": "Savage Opress",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.556Z",
                  "updated_at": "2019-03-01T21:03:24.556Z"
                },
                {
                  "id": 164,
                  "name": "Grand Moff Tarkin",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.557Z",
                  "updated_at": "2019-03-01T21:03:24.557Z"
                },
                {
                  "id": 165,
                  "name": "Finn",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.559Z",
                  "updated_at": "2019-03-01T21:03:24.559Z"
                },
                {
                  "id": 166,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.562Z",
                  "updated_at": "2019-03-01T21:03:24.562Z"
                },
                {
                  "id": 167,
                  "name": "Shmi Skywalker",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.564Z",
                  "updated_at": "2019-03-01T21:03:24.564Z"
                },
                {
                  "id": 168,
                  "name": "Captain Phasma",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.566Z",
                  "updated_at": "2019-03-01T21:03:24.566Z"
                },
                {
                  "id": 169,
                  "name": "Yoda",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.568Z",
                  "updated_at": "2019-03-01T21:03:24.568Z"
                },
                {
                  "id": 170,
                  "name": "Sebulba",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.570Z",
                  "updated_at": "2019-03-01T21:03:24.570Z"
                },
                {
                  "id": 171,
                  "name": "Ahsoka Tano",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.572Z",
                  "updated_at": "2019-03-01T21:03:24.572Z"
                },
                {
                  "id": 172,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.574Z",
                  "updated_at": "2019-03-01T21:03:24.574Z"
                },
                {
                  "id": 173,
                  "name": "Sebulba",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.576Z",
                  "updated_at": "2019-03-01T21:03:24.576Z"
                },
                {
                  "id": 174,
                  "name": "Qui-Gon Jinn",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.578Z",
                  "updated_at": "2019-03-01T21:03:24.578Z"
                },
                {
                  "id": 175,
                  "name": "Finn",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.579Z",
                  "updated_at": "2019-03-01T21:03:24.579Z"
                },
                {
                  "id": 176,
                  "name": "Jango Fett",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.581Z",
                  "updated_at": "2019-03-01T21:03:24.581Z"
                },
                {
                  "id": 177,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.582Z",
                  "updated_at": "2019-03-01T21:03:24.582Z"
                },
                {
                  "id": 178,
                  "name": "Kanan Jarrus",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.584Z",
                  "updated_at": "2019-03-01T21:03:24.584Z"
                },
                {
                  "id": 179,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.585Z",
                  "updated_at": "2019-03-01T21:03:24.585Z"
                },
                {
                  "id": 180,
                  "name": "Qui-Gon Jinn",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.586Z",
                  "updated_at": "2019-03-01T21:03:24.586Z"
                },
                {
                  "id": 181,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:03:24.590Z",
                  "updated_at": "2019-03-01T21:03:24.590Z"
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
                "title": "aliquam",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.922Z",
                "updated_at": "2019-03-01T21:03:24.922Z",
                "items": [
            
                ]
              },
              {
                "id": 18,
                "title": "est",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.923Z",
                "updated_at": "2019-03-01T21:03:24.923Z",
                "items": [
            
                ]
              },
              {
                "id": 19,
                "title": "recusandae",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.924Z",
                "updated_at": "2019-03-01T21:03:24.924Z",
                "items": [
            
                ]
              },
              {
                "id": 20,
                "title": "a",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.925Z",
                "updated_at": "2019-03-01T21:03:24.925Z",
                "items": [
            
                ]
              },
              {
                "id": 21,
                "title": "quia",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.927Z",
                "updated_at": "2019-03-01T21:03:24.927Z",
                "items": [
            
                ]
              },
              {
                "id": 22,
                "title": "et",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.928Z",
                "updated_at": "2019-03-01T21:03:24.928Z",
                "items": [
            
                ]
              },
              {
                "id": 23,
                "title": "laborum",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.929Z",
                "updated_at": "2019-03-01T21:03:24.929Z",
                "items": [
            
                ]
              },
              {
                "id": 24,
                "title": "tempora",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.930Z",
                "updated_at": "2019-03-01T21:03:24.930Z",
                "items": [
            
                ]
              },
              {
                "id": 25,
                "title": "voluptas",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.931Z",
                "updated_at": "2019-03-01T21:03:24.931Z",
                "items": [
            
                ]
              },
              {
                "id": 26,
                "title": "dolorem",
                "created_by": "19",
                "created_at": "2019-03-01T21:03:24.932Z",
                "updated_at": "2019-03-01T21:03:24.932Z",
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
                "title": "placeat",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.950Z",
                "updated_at": "2019-03-01T21:03:24.950Z",
                "items": [
            
                ]
              },
              {
                "id": 28,
                "title": "aut",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.951Z",
                "updated_at": "2019-03-01T21:03:24.951Z",
                "items": [
            
                ]
              },
              {
                "id": 29,
                "title": "id",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.953Z",
                "updated_at": "2019-03-01T21:03:24.953Z",
                "items": [
            
                ]
              },
              {
                "id": 30,
                "title": "ea",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.954Z",
                "updated_at": "2019-03-01T21:03:24.954Z",
                "items": [
            
                ]
              },
              {
                "id": 31,
                "title": "vero",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.955Z",
                "updated_at": "2019-03-01T21:03:24.955Z",
                "items": [
            
                ]
              },
              {
                "id": 32,
                "title": "in",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.956Z",
                "updated_at": "2019-03-01T21:03:24.956Z",
                "items": [
            
                ]
              },
              {
                "id": 33,
                "title": "non",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.957Z",
                "updated_at": "2019-03-01T21:03:24.957Z",
                "items": [
            
                ]
              },
              {
                "id": 34,
                "title": "cupiditate",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.958Z",
                "updated_at": "2019-03-01T21:03:24.958Z",
                "items": [
            
                ]
              },
              {
                "id": 35,
                "title": "nemo",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.959Z",
                "updated_at": "2019-03-01T21:03:24.959Z",
                "items": [
            
                ]
              },
              {
                "id": 36,
                "title": "dolorem",
                "created_by": "20",
                "created_at": "2019-03-01T21:03:24.960Z",
                "updated_at": "2019-03-01T21:03:24.960Z",
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
              "title": "praesentium",
              "created_by": "21",
              "created_at": "2019-03-01T21:03:24.978Z",
              "updated_at": "2019-03-01T21:03:24.978Z",
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
              "title": "nihil",
              "created_by": "22",
              "created_at": "2019-03-01T21:03:24.995Z",
              "updated_at": "2019-03-01T21:03:24.995Z",
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
              "created_at": "2019-03-01T21:03:25.063Z",
              "updated_at": "2019-03-01T21:03:25.063Z",
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
              "created_at": "2019-03-01T21:03:25.082Z",
              "updated_at": "2019-03-01T21:03:25.082Z",
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
