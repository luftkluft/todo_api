

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
              "email": "collenebogan@cummerata.name",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTU0Mzc5NjF9.lcim6FvTVLS5t5DT9Y5-a0bMtsabY34izjhPMANpNsU"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "duncan@hilpertreynolds.net",
              "password": "2oJ5W4Un1mMtMxT"
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
              "name": "Horace Pacocha",
              "email": "joann@barrows.com",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMCwiZXhwIjoxNTU1NDM3OTYyfQ.O7O16SXzoguR8t_yaESNSbW3b02dor_KnGaX6zWHy9Q"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Jaimee Quigley",
              "email": "cirahermann@schillerwelch.org",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMSwiZXhwIjoxNTU1NDM3OTYyfQ.dXjMt4uab_0W_2YFm7-LdqnHoIiUiSgfXULgIaz59B0"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Shaun Gibson",
              "email": "carlynlabadie@huels.org",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMiwiZXhwIjoxNTU1NDM3OTYyfQ.7bW1pjXnvqRWDRJwU5f7q6VIJspj1riq3EFmqfR_ioE"
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
                "name": "Grand Admiral Thrawn",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.938Z",
                "updated_at": "2019-04-15T18:06:01.938Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 2,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.940Z",
                "updated_at": "2019-04-15T18:06:01.940Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 3,
                "name": "Yoda",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.942Z",
                "updated_at": "2019-04-15T18:06:01.942Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 4,
                "name": "Supreme Leader Snoke",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.944Z",
                "updated_at": "2019-04-15T18:06:01.944Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 5,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.946Z",
                "updated_at": "2019-04-15T18:06:01.946Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 6,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.948Z",
                "updated_at": "2019-04-15T18:06:01.948Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 7,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.950Z",
                "updated_at": "2019-04-15T18:06:01.950Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 8,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.952Z",
                "updated_at": "2019-04-15T18:06:01.952Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 9,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.954Z",
                "updated_at": "2019-04-15T18:06:01.954Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 10,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.955Z",
                "updated_at": "2019-04-15T18:06:01.955Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 11,
                "name": "Han Solo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.957Z",
                "updated_at": "2019-04-15T18:06:01.957Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 12,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.959Z",
                "updated_at": "2019-04-15T18:06:01.959Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 13,
                "name": "Kanan Jarrus",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.960Z",
                "updated_at": "2019-04-15T18:06:01.960Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 14,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.962Z",
                "updated_at": "2019-04-15T18:06:01.962Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 15,
                "name": "Yoda",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.964Z",
                "updated_at": "2019-04-15T18:06:01.964Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 16,
                "name": "Sheev Palpatine",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.965Z",
                "updated_at": "2019-04-15T18:06:01.965Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 17,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.967Z",
                "updated_at": "2019-04-15T18:06:01.967Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 18,
                "name": "Greedo",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.968Z",
                "updated_at": "2019-04-15T18:06:01.968Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 19,
                "name": "Yoda",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.970Z",
                "updated_at": "2019-04-15T18:06:01.970Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
              },
              {
                "id": 20,
                "name": "Chewbacca",
                "done": false,
                "todo_id": 1,
                "created_at": "2019-04-15T18:06:01.971Z",
                "updated_at": "2019-04-15T18:06:01.971Z",
                "todo": {
                  "id": 1,
                  "title": "enim",
                  "user_id": 3,
                  "created_at": "2019-04-15T18:06:01.920Z",
                  "updated_at": "2019-04-15T18:06:01.920Z"
                }
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
                "created_at": "2019-04-15T18:06:02.009Z",
                "updated_at": "2019-04-15T18:06:02.009Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 22,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.012Z",
                "updated_at": "2019-04-15T18:06:02.012Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 23,
                "name": "Boba Fett",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.014Z",
                "updated_at": "2019-04-15T18:06:02.014Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 24,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.017Z",
                "updated_at": "2019-04-15T18:06:02.017Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 25,
                "name": "Chirrut Imwe",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.019Z",
                "updated_at": "2019-04-15T18:06:02.019Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 26,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.021Z",
                "updated_at": "2019-04-15T18:06:02.021Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 27,
                "name": "Luke Skywalker",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.023Z",
                "updated_at": "2019-04-15T18:06:02.023Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 28,
                "name": "Maz Kanata",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.025Z",
                "updated_at": "2019-04-15T18:06:02.025Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 29,
                "name": "Jabba the Hutt",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.027Z",
                "updated_at": "2019-04-15T18:06:02.027Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 30,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.030Z",
                "updated_at": "2019-04-15T18:06:02.030Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 31,
                "name": "Greedo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.032Z",
                "updated_at": "2019-04-15T18:06:02.032Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 32,
                "name": "Wedge Antilles",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.034Z",
                "updated_at": "2019-04-15T18:06:02.034Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 33,
                "name": "Ezra Bridger",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.035Z",
                "updated_at": "2019-04-15T18:06:02.035Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 34,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.037Z",
                "updated_at": "2019-04-15T18:06:02.037Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 35,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.039Z",
                "updated_at": "2019-04-15T18:06:02.039Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 36,
                "name": "Greedo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.040Z",
                "updated_at": "2019-04-15T18:06:02.040Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 37,
                "name": "Rune Haako",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.042Z",
                "updated_at": "2019-04-15T18:06:02.042Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 38,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.043Z",
                "updated_at": "2019-04-15T18:06:02.043Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 39,
                "name": "Yoda",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.045Z",
                "updated_at": "2019-04-15T18:06:02.045Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
                }
              },
              {
                "id": 40,
                "name": "Darth Vader",
                "done": false,
                "todo_id": 2,
                "created_at": "2019-04-15T18:06:02.046Z",
                "updated_at": "2019-04-15T18:06:02.046Z",
                "todo": {
                  "id": 2,
                  "title": "porro",
                  "user_id": 4,
                  "created_at": "2019-04-15T18:06:02.007Z",
                  "updated_at": "2019-04-15T18:06:02.007Z"
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
              "name": "Ki-Adi-Mundi",
              "done": false,
              "todo_id": 5,
              "created_at": "2019-04-15T18:06:02.153Z",
              "updated_at": "2019-04-15T18:06:02.153Z",
              "todo": {
                "id": 5,
                "title": "laborum",
                "user_id": 7,
                "created_at": "2019-04-15T18:06:02.151Z",
                "updated_at": "2019-04-15T18:06:02.151Z"
              }
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
              "name": "Count Dooku",
              "done": false,
              "todo_id": 6,
              "created_at": "2019-04-15T18:06:02.197Z",
              "updated_at": "2019-04-15T18:06:02.197Z",
              "todo": {
                "id": 6,
                "title": "quo",
                "user_id": 8,
                "created_at": "2019-04-15T18:06:02.195Z",
                "updated_at": "2019-04-15T18:06:02.195Z"
              }
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
              "title": "sed",
              "user_id": 11,
              "created_at": "2019-04-15T18:06:02.313Z",
              "updated_at": "2019-04-15T18:06:02.313Z",
              "items": [
                {
                  "id": 161,
                  "name": "Han Solo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.314Z",
                  "updated_at": "2019-04-15T18:06:02.314Z"
                },
                {
                  "id": 162,
                  "name": "Grand Moff Tarkin",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.316Z",
                  "updated_at": "2019-04-15T18:06:02.316Z"
                },
                {
                  "id": 163,
                  "name": "Admiral Ackbar",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.317Z",
                  "updated_at": "2019-04-15T18:06:02.317Z"
                },
                {
                  "id": 164,
                  "name": "Borvo the Hutt",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.319Z",
                  "updated_at": "2019-04-15T18:06:02.319Z"
                },
                {
                  "id": 165,
                  "name": "Jango Fett",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.320Z",
                  "updated_at": "2019-04-15T18:06:02.320Z"
                },
                {
                  "id": 166,
                  "name": "Darth Maul",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.322Z",
                  "updated_at": "2019-04-15T18:06:02.322Z"
                },
                {
                  "id": 167,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.323Z",
                  "updated_at": "2019-04-15T18:06:02.323Z"
                },
                {
                  "id": 168,
                  "name": "Darth Maul",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.324Z",
                  "updated_at": "2019-04-15T18:06:02.324Z"
                },
                {
                  "id": 169,
                  "name": "Jyn Erso",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.326Z",
                  "updated_at": "2019-04-15T18:06:02.326Z"
                },
                {
                  "id": 170,
                  "name": "General Hux",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.327Z",
                  "updated_at": "2019-04-15T18:06:02.327Z"
                },
                {
                  "id": 171,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.329Z",
                  "updated_at": "2019-04-15T18:06:02.329Z"
                },
                {
                  "id": 172,
                  "name": "Vice Admiral Holdo",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.330Z",
                  "updated_at": "2019-04-15T18:06:02.330Z"
                },
                {
                  "id": 173,
                  "name": "Chirrut Imwe",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.331Z",
                  "updated_at": "2019-04-15T18:06:02.331Z"
                },
                {
                  "id": 174,
                  "name": "Mace Windu",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.333Z",
                  "updated_at": "2019-04-15T18:06:02.333Z"
                },
                {
                  "id": 175,
                  "name": "Chirrut Imwe",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.334Z",
                  "updated_at": "2019-04-15T18:06:02.334Z"
                },
                {
                  "id": 176,
                  "name": "Ahsoka Tano",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.336Z",
                  "updated_at": "2019-04-15T18:06:02.336Z"
                },
                {
                  "id": 177,
                  "name": "Saw Gerrera",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.337Z",
                  "updated_at": "2019-04-15T18:06:02.337Z"
                },
                {
                  "id": 178,
                  "name": "Jar Jar Binks",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.338Z",
                  "updated_at": "2019-04-15T18:06:02.338Z"
                },
                {
                  "id": 179,
                  "name": "Nute Gunray",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.340Z",
                  "updated_at": "2019-04-15T18:06:02.340Z"
                },
                {
                  "id": 180,
                  "name": "Jar Jar Binks",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.341Z",
                  "updated_at": "2019-04-15T18:06:02.341Z"
                },
                {
                  "id": 181,
                  "name": "Visit Narnia",
                  "done": false,
                  "todo_id": 9,
                  "created_at": "2019-04-15T18:06:02.345Z",
                  "updated_at": "2019-04-15T18:06:02.345Z"
                }
              ],
              "user": {
                "id": 11,
                "name": "Mrs. Pauletta Boehm",
                "email": "leonardhegmann@fayshields.biz",
                "password_digest": "$2a$04$l7MzgDmllQAQ/sQR.TsRqes45y66hp5G/r946U8RqPGnpHwIakHYK",
                "created_at": "2019-04-15T18:06:02.311Z",
                "updated_at": "2019-04-15T18:06:02.311Z"
              }
            }

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/todos/10/items`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 10,
              "title": "officia",
              "user_id": 12,
              "created_at": "2019-04-15T18:06:02.358Z",
              "updated_at": "2019-04-15T18:06:02.358Z",
              "items": [
                {
                  "id": 182,
                  "name": "Saw Gerrera",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.360Z",
                  "updated_at": "2019-04-15T18:06:02.360Z"
                },
                {
                  "id": 183,
                  "name": "Darth Caedus",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.362Z",
                  "updated_at": "2019-04-15T18:06:02.362Z"
                },
                {
                  "id": 184,
                  "name": "Count Dooku",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.364Z",
                  "updated_at": "2019-04-15T18:06:02.364Z"
                },
                {
                  "id": 185,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.365Z",
                  "updated_at": "2019-04-15T18:06:02.365Z"
                },
                {
                  "id": 186,
                  "name": "Grand Moff Tarkin",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.367Z",
                  "updated_at": "2019-04-15T18:06:02.367Z"
                },
                {
                  "id": 187,
                  "name": "Darth Vader",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.368Z",
                  "updated_at": "2019-04-15T18:06:02.368Z"
                },
                {
                  "id": 188,
                  "name": "Luke Skywalker",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.369Z",
                  "updated_at": "2019-04-15T18:06:02.369Z"
                },
                {
                  "id": 189,
                  "name": "Rey",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.371Z",
                  "updated_at": "2019-04-15T18:06:02.371Z"
                },
                {
                  "id": 190,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.372Z",
                  "updated_at": "2019-04-15T18:06:02.372Z"
                },
                {
                  "id": 191,
                  "name": "Jango Fett",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.374Z",
                  "updated_at": "2019-04-15T18:06:02.374Z"
                },
                {
                  "id": 192,
                  "name": "Vice Admiral Holdo",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.375Z",
                  "updated_at": "2019-04-15T18:06:02.375Z"
                },
                {
                  "id": 193,
                  "name": "Galen Erso",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.377Z",
                  "updated_at": "2019-04-15T18:06:02.377Z"
                },
                {
                  "id": 194,
                  "name": "Bendu",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.379Z",
                  "updated_at": "2019-04-15T18:06:02.379Z"
                },
                {
                  "id": 195,
                  "name": "Darth Vader",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.380Z",
                  "updated_at": "2019-04-15T18:06:02.380Z"
                },
                {
                  "id": 196,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.382Z",
                  "updated_at": "2019-04-15T18:06:02.382Z"
                },
                {
                  "id": 197,
                  "name": "Lando Calrissian",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.383Z",
                  "updated_at": "2019-04-15T18:06:02.383Z"
                },
                {
                  "id": 198,
                  "name": "Poe Dameron",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.384Z",
                  "updated_at": "2019-04-15T18:06:02.384Z"
                },
                {
                  "id": 199,
                  "name": "Lyra Erso",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.386Z",
                  "updated_at": "2019-04-15T18:06:02.386Z"
                },
                {
                  "id": 200,
                  "name": "Leia Organa",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.387Z",
                  "updated_at": "2019-04-15T18:06:02.387Z"
                },
                {
                  "id": 201,
                  "name": "Bail Organa",
                  "done": false,
                  "todo_id": 10,
                  "created_at": "2019-04-15T18:06:02.389Z",
                  "updated_at": "2019-04-15T18:06:02.389Z"
                },
                {
                  "id": null,
                  "name": null,
                  "done": false,
                  "todo_id": 10,
                  "created_at": null,
                  "updated_at": null
                }
              ],
              "user": {
                "id": 12,
                "name": "Myriam Boehm",
                "email": "ulatromp@schustergutkowski.org",
                "password_digest": "$2a$04$eNn7PVFTBaW2Y.sN7b7caOeWuWbUfeEM/ySWlleSX6UFcMncqO0Ii",
                "created_at": "2019-04-15T18:06:02.356Z",
                "updated_at": "2019-04-15T18:06:02.356Z"
              }
            }

### Put todos/:todo_id/items/:id [PUT /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `11` (number, required)
    + id: `202` (number, required)

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/todos/11/items/202`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 204

+ Request updates the item
**PUT**&nbsp;&nbsp;`/todos/12/items/222`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Mozart"
            }

+ Response 204

+ Request returns status code 404
**PUT**&nbsp;&nbsp;`/todos/13/items/0`

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

### Delete todos/:todo_id/items/:id [DELETE /todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `15` (number, required)
    + id: `282` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/15/items/282`

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
                "id": 16,
                "title": "qui",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.603Z",
                "updated_at": "2019-04-15T18:06:02.603Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 17,
                "title": "et",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.605Z",
                "updated_at": "2019-04-15T18:06:02.605Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 18,
                "title": "rerum",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.606Z",
                "updated_at": "2019-04-15T18:06:02.606Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 19,
                "title": "voluptas",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.608Z",
                "updated_at": "2019-04-15T18:06:02.608Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 20,
                "title": "corrupti",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.609Z",
                "updated_at": "2019-04-15T18:06:02.609Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 21,
                "title": "sit",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.610Z",
                "updated_at": "2019-04-15T18:06:02.610Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 22,
                "title": "nihil",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.612Z",
                "updated_at": "2019-04-15T18:06:02.612Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 23,
                "title": "deserunt",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.613Z",
                "updated_at": "2019-04-15T18:06:02.613Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 24,
                "title": "ad",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.614Z",
                "updated_at": "2019-04-15T18:06:02.614Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
                }
              },
              {
                "id": 25,
                "title": "aperiam",
                "user_id": 18,
                "created_at": "2019-04-15T18:06:02.616Z",
                "updated_at": "2019-04-15T18:06:02.616Z",
                "items": [
            
                ],
                "user": {
                  "id": 18,
                  "name": "Devin Haag",
                  "email": "catheryn@leuschke.co",
                  "password_digest": "$2a$04$XOsjmiOJel92kwxnhZYwHOpKwY0HDiD9CEUwPcGu8Z8RyEz1pwUGi",
                  "created_at": "2019-04-15T18:06:02.601Z",
                  "updated_at": "2019-04-15T18:06:02.601Z"
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
                "id": 26,
                "title": "labore",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.637Z",
                "updated_at": "2019-04-15T18:06:02.637Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 27,
                "title": "at",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.639Z",
                "updated_at": "2019-04-15T18:06:02.639Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 28,
                "title": "quia",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.640Z",
                "updated_at": "2019-04-15T18:06:02.640Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 29,
                "title": "quia",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.642Z",
                "updated_at": "2019-04-15T18:06:02.642Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 30,
                "title": "quaerat",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.643Z",
                "updated_at": "2019-04-15T18:06:02.643Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 31,
                "title": "eius",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.645Z",
                "updated_at": "2019-04-15T18:06:02.645Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 32,
                "title": "molestiae",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.646Z",
                "updated_at": "2019-04-15T18:06:02.646Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 33,
                "title": "et",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.648Z",
                "updated_at": "2019-04-15T18:06:02.648Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 34,
                "title": "minus",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.650Z",
                "updated_at": "2019-04-15T18:06:02.650Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              },
              {
                "id": 35,
                "title": "quasi",
                "user_id": 19,
                "created_at": "2019-04-15T18:06:02.651Z",
                "updated_at": "2019-04-15T18:06:02.651Z",
                "items": [
            
                ],
                "user": {
                  "id": 19,
                  "name": "Madge Heidenreich DVM",
                  "email": "antoniobatz@miller.org",
                  "password_digest": "$2a$04$azmUEoUR6sYcElorD0YvHeEBVapksl.X3Wx6l7yS6tYb9vh5gme2i",
                  "created_at": "2019-04-15T18:06:02.635Z",
                  "updated_at": "2019-04-15T18:06:02.635Z"
                }
              }
            ]

### Get todos/:id [GET /todos/{id}]

+ Parameters
    + id: `36` (number, required)

+ Request returns the todo
**GET**&nbsp;&nbsp;`/todos/36`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 36,
              "title": "et",
              "user_id": 20,
              "created_at": "2019-04-15T18:06:02.672Z",
              "updated_at": "2019-04-15T18:06:02.672Z",
              "items": [
            
              ],
              "user": {
                "id": 20,
                "name": "Terisa Kutch",
                "email": "zoilaroberts@stamm.name",
                "password_digest": "$2a$04$857bzBoMLc6OMZNlq13QF.HS9sL3UZ0Y0GZ3XchzdfaiCfGtuAvta",
                "created_at": "2019-04-15T18:06:02.669Z",
                "updated_at": "2019-04-15T18:06:02.669Z"
              }
            }

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/todos/46`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 46,
              "title": "ut",
              "user_id": 21,
              "created_at": "2019-04-15T18:06:02.696Z",
              "updated_at": "2019-04-15T18:06:02.696Z",
              "items": [
            
              ],
              "user": {
                "id": 21,
                "name": "Tad Hettinger",
                "email": "melaniberge@carterwolff.info",
                "password_digest": "$2a$04$rNXclolpVjhv5YLpdDE0leRWnVy.T.J1fJf1.L8OYVys3SYHR81R.",
                "created_at": "2019-04-15T18:06:02.694Z",
                "updated_at": "2019-04-15T18:06:02.694Z"
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
              "user_id": "24"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 86,
              "title": "Learn Elm",
              "user_id": 24,
              "created_at": "2019-04-15T18:06:02.788Z",
              "updated_at": "2019-04-15T18:06:02.788Z",
              "items": [
            
              ],
              "user": {
                "id": 24,
                "name": "Eleonore Kshlerin",
                "email": "wilfredo@wilkinson.biz",
                "password_digest": "$2a$04$BxukgK4zZB7SsroV.eJ4beiyZvhD03Y0UPnX8nKZath79BdLFkV8q",
                "created_at": "2019-04-15T18:06:02.768Z",
                "updated_at": "2019-04-15T18:06:02.768Z"
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
              "user_id": "25"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 97,
              "title": "Learn Elm",
              "user_id": 25,
              "created_at": "2019-04-15T18:06:02.813Z",
              "updated_at": "2019-04-15T18:06:02.813Z",
              "items": [
            
              ],
              "user": {
                "id": 25,
                "name": "Mrs. Cindie Wiza",
                "email": "joemosciski@auer.biz",
                "password_digest": "$2a$04$S9pIWnitN2NpQYYoQXSAD.74lmKV5iseVQXX8WWUCcWw/QGKeMeVG",
                "created_at": "2019-04-15T18:06:02.794Z",
                "updated_at": "2019-04-15T18:06:02.794Z"
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
              "user_id": 26,
              "created_at": null,
              "updated_at": null,
              "items": [
            
              ],
              "user": {
                "id": 26,
                "name": "Hong Bednar",
                "email": "dillon@oberbrunner.name",
                "password_digest": "$2a$04$I.0sW9ZvZ.ocZTURxRSG5u3mE5CjlCGsd4xrXsARBsXpaiyrsgtDy",
                "created_at": "2019-04-15T18:06:02.818Z",
                "updated_at": "2019-04-15T18:06:02.818Z"
              }
            }

### Put todos/:id [PUT /todos/{id}]

+ Parameters
    + id: `108` (number, required)

+ Request updates the record
**PUT**&nbsp;&nbsp;`/todos/108`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "title": "Shopping"
            }

+ Response 204

+ Request returns status code 204
**PUT**&nbsp;&nbsp;`/todos/118`

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
    + id: `128` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/todos/128`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204
