

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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTE1NjI2NTR9.fgPxV97D0loOC9TUCXVdlyB1RMnnZSwnu4uPumCEUMo"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "maye@langosh.org",
              "password": "O97fSe68"
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
              "name": "Mrs. Albertine Bradtke",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMiwiZXhwIjoxNTUxNTYyNjU1fQ.ZnJgY381wRxwFDWkTZL51k_CxlZIIWYa-KuKQELVHyE"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Thad Kuhn",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMywiZXhwIjoxNTUxNTYyNjU1fQ.9bT1TWOukQQgnuFNEwPzTKkll98X3ofmhqLYoHA7L3I"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Cleta Rolfson",
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
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwiZXhwIjoxNTUxNTYyNjU1fQ.oxi3AV5kWRGd3jRy_eB-RYdlE7MjCu_IwuZyFYp_wAU"
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
                "name": "Watto",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.234Z",
                "updated_at": "2019-03-01T21:37:34.234Z"
              },
              {
                "id": 2,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.236Z",
                "updated_at": "2019-03-01T21:37:34.236Z"
              },
              {
                "id": 3,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.238Z",
                "updated_at": "2019-03-01T21:37:34.238Z"
              },
              {
                "id": 4,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.240Z",
                "updated_at": "2019-03-01T21:37:34.240Z"
              },
              {
                "id": 5,
                "name": "General Hux",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.242Z",
                "updated_at": "2019-03-01T21:37:34.242Z"
              },
              {
                "id": 6,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.244Z",
                "updated_at": "2019-03-01T21:37:34.244Z"
              },
              {
                "id": 7,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.246Z",
                "updated_at": "2019-03-01T21:37:34.246Z"
              },
              {
                "id": 8,
                "name": "Greedo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.247Z",
                "updated_at": "2019-03-01T21:37:34.247Z"
              },
              {
                "id": 9,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.249Z",
                "updated_at": "2019-03-01T21:37:34.249Z"
              },
              {
                "id": 10,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.251Z",
                "updated_at": "2019-03-01T21:37:34.251Z"
              },
              {
                "id": 11,
                "name": "Sheev Palpatine",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.252Z",
                "updated_at": "2019-03-01T21:37:34.252Z"
              },
              {
                "id": 12,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.254Z",
                "updated_at": "2019-03-01T21:37:34.254Z"
              },
              {
                "id": 13,
                "name": "Greedo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.255Z",
                "updated_at": "2019-03-01T21:37:34.255Z"
              },
              {
                "id": 14,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.257Z",
                "updated_at": "2019-03-01T21:37:34.257Z"
              },
              {
                "id": 15,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.258Z",
                "updated_at": "2019-03-01T21:37:34.258Z"
              },
              {
                "id": 16,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.260Z",
                "updated_at": "2019-03-01T21:37:34.260Z"
              },
              {
                "id": 17,
                "name": "Chewbacca",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.261Z",
                "updated_at": "2019-03-01T21:37:34.261Z"
              },
              {
                "id": 18,
                "name": "Nute Gunray",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.263Z",
                "updated_at": "2019-03-01T21:37:34.263Z"
              },
              {
                "id": 19,
                "name": "Sebulba",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.264Z",
                "updated_at": "2019-03-01T21:37:34.264Z"
              },
              {
                "id": 20,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-01T21:37:34.266Z",
                "updated_at": "2019-03-01T21:37:34.266Z"
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
                "name": "Watto",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.288Z",
                "updated_at": "2019-03-01T21:37:34.288Z"
              },
              {
                "id": 22,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.290Z",
                "updated_at": "2019-03-01T21:37:34.290Z"
              },
              {
                "id": 23,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.292Z",
                "updated_at": "2019-03-01T21:37:34.292Z"
              },
              {
                "id": 24,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.293Z",
                "updated_at": "2019-03-01T21:37:34.293Z"
              },
              {
                "id": 25,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.295Z",
                "updated_at": "2019-03-01T21:37:34.295Z"
              },
              {
                "id": 26,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.296Z",
                "updated_at": "2019-03-01T21:37:34.296Z"
              },
              {
                "id": 27,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.298Z",
                "updated_at": "2019-03-01T21:37:34.298Z"
              },
              {
                "id": 28,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.299Z",
                "updated_at": "2019-03-01T21:37:34.299Z"
              },
              {
                "id": 29,
                "name": "Yoda",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.301Z",
                "updated_at": "2019-03-01T21:37:34.301Z"
              },
              {
                "id": 30,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.302Z",
                "updated_at": "2019-03-01T21:37:34.302Z"
              },
              {
                "id": 31,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.304Z",
                "updated_at": "2019-03-01T21:37:34.304Z"
              },
              {
                "id": 32,
                "name": "Rey",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.305Z",
                "updated_at": "2019-03-01T21:37:34.305Z"
              },
              {
                "id": 33,
                "name": "Yoda",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.306Z",
                "updated_at": "2019-03-01T21:37:34.306Z"
              },
              {
                "id": 34,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.308Z",
                "updated_at": "2019-03-01T21:37:34.308Z"
              },
              {
                "id": 35,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.309Z",
                "updated_at": "2019-03-01T21:37:34.309Z"
              },
              {
                "id": 36,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.311Z",
                "updated_at": "2019-03-01T21:37:34.311Z"
              },
              {
                "id": 37,
                "name": "Kylo Ren",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.312Z",
                "updated_at": "2019-03-01T21:37:34.312Z"
              },
              {
                "id": 38,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.313Z",
                "updated_at": "2019-03-01T21:37:34.313Z"
              },
              {
                "id": 39,
                "name": "Sheev Palpatine",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.315Z",
                "updated_at": "2019-03-01T21:37:34.315Z"
              },
              {
                "id": 40,
                "name": "Bail Organa",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-01T21:37:34.316Z",
                "updated_at": "2019-03-01T21:37:34.316Z"
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
              "name": "Grand Moff Tarkin",
              "done": false,
              "todo_id": 5,
              "created_at": "2019-03-01T21:37:34.409Z",
              "updated_at": "2019-03-01T21:37:34.409Z"
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
              "name": "Darth Caedus",
              "done": false,
              "todo_id": 6,
              "created_at": "2019-03-01T21:37:34.449Z",
              "updated_at": "2019-03-01T21:37:34.449Z"
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
              "title": "rerum",
              "created_by": "11",
              "created_at": "2019-03-01T21:37:34.565Z",
              "updated_at": "2019-03-01T21:37:34.565Z",
              "items": [
                {
                  "id": 161,
                  "name": "Sebulba",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.567Z",
                  "updated_at": "2019-03-01T21:37:34.567Z"
                },
                {
                  "id": 162,
                  "name": "Ben Solo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.569Z",
                  "updated_at": "2019-03-01T21:37:34.569Z"
                },
                {
                  "id": 163,
                  "name": "Watto",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.570Z",
                  "updated_at": "2019-03-01T21:37:34.570Z"
                },
                {
                  "id": 164,
                  "name": "Saw Gerrera",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.571Z",
                  "updated_at": "2019-03-01T21:37:34.571Z"
                },
                {
                  "id": 165,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.573Z",
                  "updated_at": "2019-03-01T21:37:34.573Z"
                },
                {
                  "id": 166,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.574Z",
                  "updated_at": "2019-03-01T21:37:34.574Z"
                },
                {
                  "id": 167,
                  "name": "Galen Erso",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.576Z",
                  "updated_at": "2019-03-01T21:37:34.576Z"
                },
                {
                  "id": 168,
                  "name": "Yoda",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.577Z",
                  "updated_at": "2019-03-01T21:37:34.577Z"
                },
                {
                  "id": 169,
                  "name": "Qui-Gon Jinn",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.578Z",
                  "updated_at": "2019-03-01T21:37:34.578Z"
                },
                {
                  "id": 170,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.580Z",
                  "updated_at": "2019-03-01T21:37:34.580Z"
                },
                {
                  "id": 171,
                  "name": "Lyra Erso",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.581Z",
                  "updated_at": "2019-03-01T21:37:34.581Z"
                },
                {
                  "id": 172,
                  "name": "Wedge Antilles",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.582Z",
                  "updated_at": "2019-03-01T21:37:34.582Z"
                },
                {
                  "id": 173,
                  "name": "Padme Amidala",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.584Z",
                  "updated_at": "2019-03-01T21:37:34.584Z"
                },
                {
                  "id": 174,
                  "name": "Kanan Jarrus",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.585Z",
                  "updated_at": "2019-03-01T21:37:34.585Z"
                },
                {
                  "id": 175,
                  "name": "Rose Tico",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.586Z",
                  "updated_at": "2019-03-01T21:37:34.586Z"
                },
                {
                  "id": 176,
                  "name": "Ben Solo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.588Z",
                  "updated_at": "2019-03-01T21:37:34.588Z"
                },
                {
                  "id": 177,
                  "name": "Mon Mothma",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.589Z",
                  "updated_at": "2019-03-01T21:37:34.589Z"
                },
                {
                  "id": 178,
                  "name": "Sebulba",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.591Z",
                  "updated_at": "2019-03-01T21:37:34.591Z"
                },
                {
                  "id": 179,
                  "name": "Ezra Bridger",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.593Z",
                  "updated_at": "2019-03-01T21:37:34.593Z"
                },
                {
                  "id": 180,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.594Z",
                  "updated_at": "2019-03-01T21:37:34.594Z"
                },
                {
                  "id": 181,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-01T21:37:34.598Z",
                  "updated_at": "2019-03-01T21:37:34.598Z"
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
                "title": "perspiciatis",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.909Z",
                "updated_at": "2019-03-01T21:37:34.909Z",
                "items": [
            
                ]
              },
              {
                "id": 18,
                "title": "quisquam",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.910Z",
                "updated_at": "2019-03-01T21:37:34.910Z",
                "items": [
            
                ]
              },
              {
                "id": 19,
                "title": "amet",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.911Z",
                "updated_at": "2019-03-01T21:37:34.911Z",
                "items": [
            
                ]
              },
              {
                "id": 20,
                "title": "et",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.912Z",
                "updated_at": "2019-03-01T21:37:34.912Z",
                "items": [
            
                ]
              },
              {
                "id": 21,
                "title": "odio",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.913Z",
                "updated_at": "2019-03-01T21:37:34.913Z",
                "items": [
            
                ]
              },
              {
                "id": 22,
                "title": "sit",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.914Z",
                "updated_at": "2019-03-01T21:37:34.914Z",
                "items": [
            
                ]
              },
              {
                "id": 23,
                "title": "sed",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.914Z",
                "updated_at": "2019-03-01T21:37:34.914Z",
                "items": [
            
                ]
              },
              {
                "id": 24,
                "title": "possimus",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.915Z",
                "updated_at": "2019-03-01T21:37:34.915Z",
                "items": [
            
                ]
              },
              {
                "id": 25,
                "title": "eos",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.916Z",
                "updated_at": "2019-03-01T21:37:34.916Z",
                "items": [
            
                ]
              },
              {
                "id": 26,
                "title": "rerum",
                "created_by": "19",
                "created_at": "2019-03-01T21:37:34.917Z",
                "updated_at": "2019-03-01T21:37:34.917Z",
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
                "title": "saepe",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.935Z",
                "updated_at": "2019-03-01T21:37:34.935Z",
                "items": [
            
                ]
              },
              {
                "id": 28,
                "title": "quae",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.936Z",
                "updated_at": "2019-03-01T21:37:34.936Z",
                "items": [
            
                ]
              },
              {
                "id": 29,
                "title": "consequatur",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.937Z",
                "updated_at": "2019-03-01T21:37:34.937Z",
                "items": [
            
                ]
              },
              {
                "id": 30,
                "title": "laborum",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.938Z",
                "updated_at": "2019-03-01T21:37:34.938Z",
                "items": [
            
                ]
              },
              {
                "id": 31,
                "title": "non",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.939Z",
                "updated_at": "2019-03-01T21:37:34.939Z",
                "items": [
            
                ]
              },
              {
                "id": 32,
                "title": "atque",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.940Z",
                "updated_at": "2019-03-01T21:37:34.940Z",
                "items": [
            
                ]
              },
              {
                "id": 33,
                "title": "veniam",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.941Z",
                "updated_at": "2019-03-01T21:37:34.941Z",
                "items": [
            
                ]
              },
              {
                "id": 34,
                "title": "et",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.942Z",
                "updated_at": "2019-03-01T21:37:34.942Z",
                "items": [
            
                ]
              },
              {
                "id": 35,
                "title": "velit",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.943Z",
                "updated_at": "2019-03-01T21:37:34.943Z",
                "items": [
            
                ]
              },
              {
                "id": 36,
                "title": "saepe",
                "created_by": "20",
                "created_at": "2019-03-01T21:37:34.944Z",
                "updated_at": "2019-03-01T21:37:34.944Z",
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
              "title": "ipsam",
              "created_by": "21",
              "created_at": "2019-03-01T21:37:34.961Z",
              "updated_at": "2019-03-01T21:37:34.961Z",
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
              "title": "vel",
              "created_by": "22",
              "created_at": "2019-03-01T21:37:34.979Z",
              "updated_at": "2019-03-01T21:37:34.979Z",
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
              "created_at": "2019-03-01T21:37:35.044Z",
              "updated_at": "2019-03-01T21:37:35.044Z",
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
              "created_at": "2019-03-01T21:37:35.063Z",
              "updated_at": "2019-03-01T21:37:35.063Z",
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
