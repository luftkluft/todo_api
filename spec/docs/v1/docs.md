

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
              "email": "porfirio@pollich.io",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTM5NTU0OTF9.Q-cd82pj_nUrqVvxISuQHEpVNaNVTLoGvwLhBWSBOG0"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "josiah@wilkinson.biz",
              "password": "BzBfNl94Lw9fC"
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
              "name": "Annett Muller",
              "email": "tyrell@ernser.net",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMiwiZXhwIjoxNTUzOTU1NDkyfQ.tD3yANPuFgsGSk1IliLANFrBjgvzjD0wwfIsEaaBo0E"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Freeman Bayer",
              "email": "florentino@walker.biz",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMywiZXhwIjoxNTUzOTU1NDkyfQ.Vi36-mkZgW-VTsQTqja4zwVLXdWf4sKQpl7zjjKWzrk"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Dr. Wallace Ebert",
              "email": "myong@borer.name",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwiZXhwIjoxNTUzOTU1NDkyfQ.1EJhSZvGjUMm1Y0fwMtbJxBnVqj_yUbuhoxs5EmCbNM"
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
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.311Z",
                "updated_at": "2019-03-29T14:18:11.311Z"
              },
              {
                "id": 2,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.314Z",
                "updated_at": "2019-03-29T14:18:11.314Z"
              },
              {
                "id": 3,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.315Z",
                "updated_at": "2019-03-29T14:18:11.315Z"
              },
              {
                "id": 4,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.317Z",
                "updated_at": "2019-03-29T14:18:11.317Z"
              },
              {
                "id": 5,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.319Z",
                "updated_at": "2019-03-29T14:18:11.319Z"
              },
              {
                "id": 6,
                "name": "Sheev Palpatine",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.321Z",
                "updated_at": "2019-03-29T14:18:11.321Z"
              },
              {
                "id": 7,
                "name": "Admiral Ackbar",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.323Z",
                "updated_at": "2019-03-29T14:18:11.323Z"
              },
              {
                "id": 8,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.325Z",
                "updated_at": "2019-03-29T14:18:11.325Z"
              },
              {
                "id": 9,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.327Z",
                "updated_at": "2019-03-29T14:18:11.327Z"
              },
              {
                "id": 10,
                "name": "Grand Moff Tarkin",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.328Z",
                "updated_at": "2019-03-29T14:18:11.328Z"
              },
              {
                "id": 11,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.330Z",
                "updated_at": "2019-03-29T14:18:11.330Z"
              },
              {
                "id": 12,
                "name": "Ahsoka Tano",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.332Z",
                "updated_at": "2019-03-29T14:18:11.332Z"
              },
              {
                "id": 13,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.334Z",
                "updated_at": "2019-03-29T14:18:11.334Z"
              },
              {
                "id": 14,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.335Z",
                "updated_at": "2019-03-29T14:18:11.335Z"
              },
              {
                "id": 15,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.337Z",
                "updated_at": "2019-03-29T14:18:11.337Z"
              },
              {
                "id": 16,
                "name": "Mace Windu",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.339Z",
                "updated_at": "2019-03-29T14:18:11.339Z"
              },
              {
                "id": 17,
                "name": "Galen Erso",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.341Z",
                "updated_at": "2019-03-29T14:18:11.341Z"
              },
              {
                "id": 18,
                "name": "Anakin Skywalker",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.342Z",
                "updated_at": "2019-03-29T14:18:11.342Z"
              },
              {
                "id": 19,
                "name": "Saw Gerrera",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.344Z",
                "updated_at": "2019-03-29T14:18:11.344Z"
              },
              {
                "id": 20,
                "name": "Ki-Adi-Mundi",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-03-29T14:18:11.346Z",
                "updated_at": "2019-03-29T14:18:11.346Z"
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
                "created_at": "2019-03-29T14:18:11.371Z",
                "updated_at": "2019-03-29T14:18:11.371Z"
              },
              {
                "id": 22,
                "name": "Han Solo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.373Z",
                "updated_at": "2019-03-29T14:18:11.373Z"
              },
              {
                "id": 23,
                "name": "Bail Organa",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.375Z",
                "updated_at": "2019-03-29T14:18:11.375Z"
              },
              {
                "id": 24,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.377Z",
                "updated_at": "2019-03-29T14:18:11.377Z"
              },
              {
                "id": 25,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.379Z",
                "updated_at": "2019-03-29T14:18:11.379Z"
              },
              {
                "id": 26,
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.381Z",
                "updated_at": "2019-03-29T14:18:11.381Z"
              },
              {
                "id": 27,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.383Z",
                "updated_at": "2019-03-29T14:18:11.383Z"
              },
              {
                "id": 28,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.385Z",
                "updated_at": "2019-03-29T14:18:11.385Z"
              },
              {
                "id": 29,
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.387Z",
                "updated_at": "2019-03-29T14:18:11.387Z"
              },
              {
                "id": 30,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.389Z",
                "updated_at": "2019-03-29T14:18:11.389Z"
              },
              {
                "id": 31,
                "name": "Padme Amidala",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.392Z",
                "updated_at": "2019-03-29T14:18:11.392Z"
              },
              {
                "id": 32,
                "name": "General Hux",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.393Z",
                "updated_at": "2019-03-29T14:18:11.393Z"
              },
              {
                "id": 33,
                "name": "Watto",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.395Z",
                "updated_at": "2019-03-29T14:18:11.395Z"
              },
              {
                "id": 34,
                "name": "Bail Organa",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.396Z",
                "updated_at": "2019-03-29T14:18:11.396Z"
              },
              {
                "id": 35,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.398Z",
                "updated_at": "2019-03-29T14:18:11.398Z"
              },
              {
                "id": 36,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.399Z",
                "updated_at": "2019-03-29T14:18:11.399Z"
              },
              {
                "id": 37,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.400Z",
                "updated_at": "2019-03-29T14:18:11.400Z"
              },
              {
                "id": 38,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.402Z",
                "updated_at": "2019-03-29T14:18:11.402Z"
              },
              {
                "id": 39,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.403Z",
                "updated_at": "2019-03-29T14:18:11.403Z"
              },
              {
                "id": 40,
                "name": "Finn",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-03-29T14:18:11.405Z",
                "updated_at": "2019-03-29T14:18:11.405Z"
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
              "name": "Finn",
              "done": false,
              "todo_id": 5,
              "created_at": "2019-03-29T14:18:11.510Z",
              "updated_at": "2019-03-29T14:18:11.510Z"
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
              "created_at": "2019-03-29T14:18:11.564Z",
              "updated_at": "2019-03-29T14:18:11.564Z"
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
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
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
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
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
              "title": "dolore",
              "user_id": 11,
              "created_at": "2019-03-29T14:18:11.696Z",
              "updated_at": "2019-03-29T14:18:11.696Z",
              "items": [
                {
                  "id": 161,
                  "name": "Ki-Adi-Mundi",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.697Z",
                  "updated_at": "2019-03-29T14:18:11.697Z"
                },
                {
                  "id": 162,
                  "name": "General Hux",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.699Z",
                  "updated_at": "2019-03-29T14:18:11.699Z"
                },
                {
                  "id": 163,
                  "name": "Rune Haako",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.700Z",
                  "updated_at": "2019-03-29T14:18:11.700Z"
                },
                {
                  "id": 164,
                  "name": "Chewbacca",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.702Z",
                  "updated_at": "2019-03-29T14:18:11.702Z"
                },
                {
                  "id": 165,
                  "name": "Captain Phasma",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.703Z",
                  "updated_at": "2019-03-29T14:18:11.703Z"
                },
                {
                  "id": 166,
                  "name": "Panaka",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.705Z",
                  "updated_at": "2019-03-29T14:18:11.705Z"
                },
                {
                  "id": 167,
                  "name": "Lando Calrissian",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.706Z",
                  "updated_at": "2019-03-29T14:18:11.706Z"
                },
                {
                  "id": 168,
                  "name": "Galen Erso",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.707Z",
                  "updated_at": "2019-03-29T14:18:11.707Z"
                },
                {
                  "id": 169,
                  "name": "Han Solo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.709Z",
                  "updated_at": "2019-03-29T14:18:11.709Z"
                },
                {
                  "id": 170,
                  "name": "Grand Admiral Thrawn",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.710Z",
                  "updated_at": "2019-03-29T14:18:11.710Z"
                },
                {
                  "id": 171,
                  "name": "Count Dooku",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.711Z",
                  "updated_at": "2019-03-29T14:18:11.711Z"
                },
                {
                  "id": 172,
                  "name": "General Hux",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.713Z",
                  "updated_at": "2019-03-29T14:18:11.713Z"
                },
                {
                  "id": 173,
                  "name": "Chewbacca",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.714Z",
                  "updated_at": "2019-03-29T14:18:11.714Z"
                },
                {
                  "id": 174,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.716Z",
                  "updated_at": "2019-03-29T14:18:11.716Z"
                },
                {
                  "id": 175,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.717Z",
                  "updated_at": "2019-03-29T14:18:11.717Z"
                },
                {
                  "id": 176,
                  "name": "Boba Fett",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.718Z",
                  "updated_at": "2019-03-29T14:18:11.718Z"
                },
                {
                  "id": 177,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.720Z",
                  "updated_at": "2019-03-29T14:18:11.720Z"
                },
                {
                  "id": 178,
                  "name": "Darth Vader",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.721Z",
                  "updated_at": "2019-03-29T14:18:11.721Z"
                },
                {
                  "id": 179,
                  "name": "Sabine Wren",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.723Z",
                  "updated_at": "2019-03-29T14:18:11.723Z"
                },
                {
                  "id": 180,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.724Z",
                  "updated_at": "2019-03-29T14:18:11.724Z"
                },
                {
                  "id": 181,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-03-29T14:18:11.728Z",
                  "updated_at": "2019-03-29T14:18:11.728Z"
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
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
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
              "message": "Couldn't find Item with 'id'=0 [WHERE \"items\".\"todo_id\" = $1]"
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
                "title": "quia",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.046Z",
                "updated_at": "2019-03-29T14:18:12.046Z",
                "items": [
            
                ]
              },
              {
                "id": 18,
                "title": "blanditiis",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.047Z",
                "updated_at": "2019-03-29T14:18:12.047Z",
                "items": [
            
                ]
              },
              {
                "id": 19,
                "title": "tenetur",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.049Z",
                "updated_at": "2019-03-29T14:18:12.049Z",
                "items": [
            
                ]
              },
              {
                "id": 20,
                "title": "et",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.050Z",
                "updated_at": "2019-03-29T14:18:12.050Z",
                "items": [
            
                ]
              },
              {
                "id": 21,
                "title": "qui",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.052Z",
                "updated_at": "2019-03-29T14:18:12.052Z",
                "items": [
            
                ]
              },
              {
                "id": 22,
                "title": "earum",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.053Z",
                "updated_at": "2019-03-29T14:18:12.053Z",
                "items": [
            
                ]
              },
              {
                "id": 23,
                "title": "provident",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.054Z",
                "updated_at": "2019-03-29T14:18:12.054Z",
                "items": [
            
                ]
              },
              {
                "id": 24,
                "title": "doloribus",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.056Z",
                "updated_at": "2019-03-29T14:18:12.056Z",
                "items": [
            
                ]
              },
              {
                "id": 25,
                "title": "quae",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.057Z",
                "updated_at": "2019-03-29T14:18:12.057Z",
                "items": [
            
                ]
              },
              {
                "id": 26,
                "title": "facilis",
                "user_id": 19,
                "created_at": "2019-03-29T14:18:12.059Z",
                "updated_at": "2019-03-29T14:18:12.059Z",
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
                "title": "unde",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.084Z",
                "updated_at": "2019-03-29T14:18:12.084Z",
                "items": [
            
                ]
              },
              {
                "id": 28,
                "title": "ipsum",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.086Z",
                "updated_at": "2019-03-29T14:18:12.086Z",
                "items": [
            
                ]
              },
              {
                "id": 29,
                "title": "repudiandae",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.088Z",
                "updated_at": "2019-03-29T14:18:12.088Z",
                "items": [
            
                ]
              },
              {
                "id": 30,
                "title": "ratione",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.090Z",
                "updated_at": "2019-03-29T14:18:12.090Z",
                "items": [
            
                ]
              },
              {
                "id": 31,
                "title": "dolorem",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.092Z",
                "updated_at": "2019-03-29T14:18:12.092Z",
                "items": [
            
                ]
              },
              {
                "id": 32,
                "title": "praesentium",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.094Z",
                "updated_at": "2019-03-29T14:18:12.094Z",
                "items": [
            
                ]
              },
              {
                "id": 33,
                "title": "at",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.096Z",
                "updated_at": "2019-03-29T14:18:12.096Z",
                "items": [
            
                ]
              },
              {
                "id": 34,
                "title": "officia",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.098Z",
                "updated_at": "2019-03-29T14:18:12.098Z",
                "items": [
            
                ]
              },
              {
                "id": 35,
                "title": "nesciunt",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.100Z",
                "updated_at": "2019-03-29T14:18:12.100Z",
                "items": [
            
                ]
              },
              {
                "id": 36,
                "title": "dolores",
                "user_id": 20,
                "created_at": "2019-03-29T14:18:12.102Z",
                "updated_at": "2019-03-29T14:18:12.102Z",
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
              "title": "a",
              "user_id": 21,
              "created_at": "2019-03-29T14:18:12.121Z",
              "updated_at": "2019-03-29T14:18:12.121Z",
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
              "title": "placeat",
              "user_id": 22,
              "created_at": "2019-03-29T14:18:12.145Z",
              "updated_at": "2019-03-29T14:18:12.145Z",
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
              "user_id": "25"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 87,
              "title": "Learn Elm",
              "user_id": 25,
              "created_at": "2019-03-29T14:18:12.232Z",
              "updated_at": "2019-03-29T14:18:12.232Z",
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
              "user_id": "26"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 98,
              "title": "Learn Elm",
              "user_id": 26,
              "created_at": "2019-03-29T14:18:12.256Z",
              "updated_at": "2019-03-29T14:18:12.256Z",
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
