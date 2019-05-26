

# Group Todo_API


## Users [/auth/login]


### Post auth/login [POST /api/v1/auth/login]


+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/api/v1/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "cary@greenfelder.io",
              "password": "foobar"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTg5NTgxNTh9.WLixU-B4HIt941_1g2XGFak9truGJKszqfobk1XNBpM"
            }

+ Request returns a failure message
**POST**&nbsp;&nbsp;`/api/v1/auth/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "email": "aldo@hauckrenner.org",
              "password": "037v3kReLhTrMoDf"
            }

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Invalid credentials"
            }

### Post signup [POST /api/v1/signup]


+ Request creates a new user
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Taunya Bode",
              "email": "roselittel@hane.name",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNiwiZXhwIjoxNTU4OTU4MTU5fQ.lO4FYL5CKPDgWd1SOXnZlZw7ttZoyyrVQSIhBvk0YIk"
            }

+ Request returns success message
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Gale Quigley",
              "email": "arla@welch.com",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNywiZXhwIjoxNTU4OTU4MTU5fQ.iMy-ktJvrwSwmct4mTvm8FeyR6OZIPwtNyHvHS2EjtM"
            }

+ Request returns an authentication token
**POST**&nbsp;&nbsp;`/api/v1/signup`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

    + Body

            {
              "name": "Morton Gutmann",
              "email": "wildabashirian@vandervort.name",
              "password": "foobar",
              "password_confirmation": "foobar"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Account created successfully",
              "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozOCwiZXhwIjoxNTU4OTU4MTU5fQ.igQrO5c524BBGiTxraNM9l-hZHA_XYfDDeQkHrFAP_c"
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

## Comments [/todos/:todo_id/items/:item_id/comments/:id]


### Get /todos/:todo_id/items/:item_id/comments [GET /api/v1/todos/{todo_id}/items/{item_id}/comments]

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
                "body": "Jango Fetttest",
                "image": {
                  "url": null,
                  "thumb": {
                    "url": null
                  }
                },
                "item_id": 1,
                "created_at": "2019-05-26T11:55:58.166Z",
                "updated_at": "2019-05-26T11:55:58.166Z",
                "item": {
                  "id": 1,
                  "name": "Finn",
                  "done": false,
                  "todo_id": 1,
                  "deadline": "2019-06-02T11:55:58.154Z",
                  "created_at": "2019-05-26T11:55:58.157Z",
                  "updated_at": "2019-05-26T11:55:58.157Z"
                }
              }
            ]

### Get /todos/:todo_id/items/:item_id/comments/:id [GET /api/v1/todos/{todo_id}/items/{item_id}/comments/{id}]

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
              "body": "Count Dookutest",
              "image": {
                "url": null,
                "thumb": {
                  "url": null
                }
              },
              "item_id": 2,
              "created_at": "2019-05-26T11:55:58.208Z",
              "updated_at": "2019-05-26T11:55:58.208Z",
              "item": {
                "id": 2,
                "name": "Leia Organa",
                "done": false,
                "todo_id": 2,
                "deadline": "2019-06-02T11:55:58.204Z",
                "created_at": "2019-05-26T11:55:58.206Z",
                "updated_at": "2019-05-26T11:55:58.206Z"
              }
            }

### Post /todos/:todo_id/items/:item_id/comments [POST /api/v1/todos/{todo_id}/items/{item_id}/comments]

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
              "created_at": "2019-05-26T11:55:58.235Z",
              "updated_at": "2019-05-26T11:55:58.235Z",
              "item": {
                "id": 3,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 3,
                "deadline": "2019-06-02T11:55:58.226Z",
                "created_at": "2019-05-26T11:55:58.227Z",
                "updated_at": "2019-05-26T11:55:58.227Z"
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
              "message": "#<ActiveModel::Errors:0x0000563681a17f30>"
            }

### Put /todos/:todo_id/items/:item_id/comments/:id [PUT /api/v1/todos/{todo_id}/items/{item_id}/comments/{id}]

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
              "created_at": "2019-05-26T11:55:58.264Z",
              "updated_at": "2019-05-26T11:55:58.271Z",
              "item": {
                "id": 5,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 5,
                "deadline": "2019-06-02T11:55:58.262Z",
                "created_at": "2019-05-26T11:55:58.263Z",
                "updated_at": "2019-05-26T11:55:58.263Z"
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
              "created_at": "2019-05-26T11:55:58.282Z",
              "updated_at": "2019-05-26T11:55:58.289Z",
              "item": {
                "id": 6,
                "name": "Ki-Adi-Mundi",
                "done": false,
                "todo_id": 6,
                "deadline": "2019-06-02T11:55:58.280Z",
                "created_at": "2019-05-26T11:55:58.281Z",
                "updated_at": "2019-05-26T11:55:58.281Z"
              }
            }

### Delete /todos/:todo_id/items/:item_id/comments/:id [DELETE /api/v1/todos/{todo_id}/items/{item_id}/comments/{id}]

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

## Items [/todos/:todo_id/items/:id]


### Get todos/:todo_id/items [GET /api/v1/todos/{todo_id}/items]

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
                "name": "Sabine Wren",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.315Z",
                "created_at": "2019-05-26T11:55:58.316Z",
                "updated_at": "2019-05-26T11:55:58.316Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 9,
                "name": "Mon Mothma",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.317Z",
                "created_at": "2019-05-26T11:55:58.318Z",
                "updated_at": "2019-05-26T11:55:58.318Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 10,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.318Z",
                "created_at": "2019-05-26T11:55:58.319Z",
                "updated_at": "2019-05-26T11:55:58.319Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 11,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.320Z",
                "created_at": "2019-05-26T11:55:58.321Z",
                "updated_at": "2019-05-26T11:55:58.321Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 12,
                "name": "Yoda",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.322Z",
                "created_at": "2019-05-26T11:55:58.323Z",
                "updated_at": "2019-05-26T11:55:58.323Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 13,
                "name": "Lando Calrissian",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.324Z",
                "created_at": "2019-05-26T11:55:58.324Z",
                "updated_at": "2019-05-26T11:55:58.324Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 14,
                "name": "Han Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.325Z",
                "created_at": "2019-05-26T11:55:58.326Z",
                "updated_at": "2019-05-26T11:55:58.326Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 15,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.327Z",
                "created_at": "2019-05-26T11:55:58.328Z",
                "updated_at": "2019-05-26T11:55:58.328Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 16,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.328Z",
                "created_at": "2019-05-26T11:55:58.329Z",
                "updated_at": "2019-05-26T11:55:58.329Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 17,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.330Z",
                "created_at": "2019-05-26T11:55:58.331Z",
                "updated_at": "2019-05-26T11:55:58.331Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 18,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.332Z",
                "created_at": "2019-05-26T11:55:58.332Z",
                "updated_at": "2019-05-26T11:55:58.332Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 19,
                "name": "Greedo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.333Z",
                "created_at": "2019-05-26T11:55:58.334Z",
                "updated_at": "2019-05-26T11:55:58.334Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 20,
                "name": "Savage Opress",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.335Z",
                "created_at": "2019-05-26T11:55:58.336Z",
                "updated_at": "2019-05-26T11:55:58.336Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 21,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.337Z",
                "created_at": "2019-05-26T11:55:58.337Z",
                "updated_at": "2019-05-26T11:55:58.337Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 22,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.338Z",
                "created_at": "2019-05-26T11:55:58.339Z",
                "updated_at": "2019-05-26T11:55:58.339Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 23,
                "name": "Rey",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.340Z",
                "created_at": "2019-05-26T11:55:58.341Z",
                "updated_at": "2019-05-26T11:55:58.341Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 24,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.342Z",
                "created_at": "2019-05-26T11:55:58.343Z",
                "updated_at": "2019-05-26T11:55:58.343Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 25,
                "name": "Jar Jar Binks",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.344Z",
                "created_at": "2019-05-26T11:55:58.345Z",
                "updated_at": "2019-05-26T11:55:58.345Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 26,
                "name": "Poe Dameron",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.346Z",
                "created_at": "2019-05-26T11:55:58.346Z",
                "updated_at": "2019-05-26T11:55:58.346Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
                }
              },
              {
                "id": 27,
                "name": "Darth Sidious",
                "done": false,
                "todo_id": 8,
                "deadline": "2019-06-02T11:55:58.347Z",
                "created_at": "2019-05-26T11:55:58.348Z",
                "updated_at": "2019-05-26T11:55:58.348Z",
                "todo": {
                  "id": 8,
                  "title": "qui",
                  "user_id": 10,
                  "created_at": "2019-05-26T11:55:58.314Z",
                  "updated_at": "2019-05-26T11:55:58.314Z"
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
                "name": "Ben Solo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.383Z",
                "created_at": "2019-05-26T11:55:58.384Z",
                "updated_at": "2019-05-26T11:55:58.384Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 29,
                "name": "Obi-Wan Kenobi",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.385Z",
                "created_at": "2019-05-26T11:55:58.386Z",
                "updated_at": "2019-05-26T11:55:58.386Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 30,
                "name": "Bendu",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.387Z",
                "created_at": "2019-05-26T11:55:58.388Z",
                "updated_at": "2019-05-26T11:55:58.388Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 31,
                "name": "Yoda",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.390Z",
                "created_at": "2019-05-26T11:55:58.391Z",
                "updated_at": "2019-05-26T11:55:58.391Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 32,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.392Z",
                "created_at": "2019-05-26T11:55:58.392Z",
                "updated_at": "2019-05-26T11:55:58.392Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 33,
                "name": "Hera Syndulla",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.393Z",
                "created_at": "2019-05-26T11:55:58.394Z",
                "updated_at": "2019-05-26T11:55:58.394Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 34,
                "name": "Ben Solo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.395Z",
                "created_at": "2019-05-26T11:55:58.396Z",
                "updated_at": "2019-05-26T11:55:58.396Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 35,
                "name": "Rose Tico",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.397Z",
                "created_at": "2019-05-26T11:55:58.398Z",
                "updated_at": "2019-05-26T11:55:58.398Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 36,
                "name": "Qui-Gon Jinn",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.399Z",
                "created_at": "2019-05-26T11:55:58.400Z",
                "updated_at": "2019-05-26T11:55:58.400Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 37,
                "name": "Wedge Antilles",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.401Z",
                "created_at": "2019-05-26T11:55:58.402Z",
                "updated_at": "2019-05-26T11:55:58.402Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 38,
                "name": "Count Dooku",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.403Z",
                "created_at": "2019-05-26T11:55:58.404Z",
                "updated_at": "2019-05-26T11:55:58.404Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 39,
                "name": "Jango Fett",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.405Z",
                "created_at": "2019-05-26T11:55:58.406Z",
                "updated_at": "2019-05-26T11:55:58.406Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 40,
                "name": "Bail Organa",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.407Z",
                "created_at": "2019-05-26T11:55:58.408Z",
                "updated_at": "2019-05-26T11:55:58.408Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 41,
                "name": "Darth Caedus",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.409Z",
                "created_at": "2019-05-26T11:55:58.410Z",
                "updated_at": "2019-05-26T11:55:58.410Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 42,
                "name": "Darth Maul",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.411Z",
                "created_at": "2019-05-26T11:55:58.412Z",
                "updated_at": "2019-05-26T11:55:58.412Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 43,
                "name": "Darth Maul",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.413Z",
                "created_at": "2019-05-26T11:55:58.413Z",
                "updated_at": "2019-05-26T11:55:58.413Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 44,
                "name": "Shmi Skywalker",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.414Z",
                "created_at": "2019-05-26T11:55:58.415Z",
                "updated_at": "2019-05-26T11:55:58.415Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 45,
                "name": "Vice Admiral Holdo",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.416Z",
                "created_at": "2019-05-26T11:55:58.417Z",
                "updated_at": "2019-05-26T11:55:58.417Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 46,
                "name": "Asajj Ventress",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.418Z",
                "created_at": "2019-05-26T11:55:58.419Z",
                "updated_at": "2019-05-26T11:55:58.419Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
                }
              },
              {
                "id": 47,
                "name": "Captain Phasma",
                "done": false,
                "todo_id": 9,
                "deadline": "2019-06-02T11:55:58.420Z",
                "created_at": "2019-05-26T11:55:58.421Z",
                "updated_at": "2019-05-26T11:55:58.421Z",
                "todo": {
                  "id": 9,
                  "title": "est",
                  "user_id": 11,
                  "created_at": "2019-05-26T11:55:58.382Z",
                  "updated_at": "2019-05-26T11:55:58.382Z"
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

### Get todos/:todo_id/items/:id [GET /api/v1/todos/{todo_id}/items/{id}]

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
              "name": "Greedo",
              "done": false,
              "todo_id": 12,
              "deadline": "2019-06-02T11:55:58.523Z",
              "created_at": "2019-05-26T11:55:58.524Z",
              "updated_at": "2019-05-26T11:55:58.524Z",
              "todo": {
                "id": 12,
                "title": "sit",
                "user_id": 14,
                "created_at": "2019-05-26T11:55:58.522Z",
                "updated_at": "2019-05-26T11:55:58.522Z"
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
              "name": "Borvo the Hutt",
              "done": false,
              "todo_id": 13,
              "deadline": "2019-06-02T11:55:58.567Z",
              "created_at": "2019-05-26T11:55:58.568Z",
              "updated_at": "2019-05-26T11:55:58.568Z",
              "todo": {
                "id": 13,
                "title": "asperiores",
                "user_id": 15,
                "created_at": "2019-05-26T11:55:58.566Z",
                "updated_at": "2019-05-26T11:55:58.566Z"
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

### Post todos/:todo_id/items [POST /api/v1/todos/{todo_id}/items]

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
              "created_at": "2019-05-26T11:55:58.748Z",
              "updated_at": "2019-05-26T11:55:58.748Z",
              "todo": {
                "id": 16,
                "title": "ut",
                "user_id": 18,
                "created_at": "2019-05-26T11:55:58.706Z",
                "updated_at": "2019-05-26T11:55:58.706Z"
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
              "message": "#<ActiveModel::Errors:0x00005636819bf880>"
            }

### Put todos/:todo_id/items/:id [PUT /api/v1/todos/{todo_id}/items/{id}]

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
              "deadline": "2019-06-02T11:55:58.803Z",
              "created_at": "2019-05-26T11:55:58.804Z",
              "updated_at": "2019-05-26T11:55:58.841Z",
              "todo": {
                "id": 18,
                "title": "ut",
                "user_id": 20,
                "created_at": "2019-05-26T11:55:58.802Z",
                "updated_at": "2019-05-26T11:55:58.802Z"
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
              "deadline": "2019-06-02T11:55:58.849Z",
              "created_at": "2019-05-26T11:55:58.850Z",
              "updated_at": "2019-05-26T11:55:58.888Z",
              "todo": {
                "id": 19,
                "title": "magnam",
                "user_id": 21,
                "created_at": "2019-05-26T11:55:58.848Z",
                "updated_at": "2019-05-26T11:55:58.848Z"
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

### Delete todos/:todo_id/items/:id [DELETE /api/v1/todos/{todo_id}/items/{id}]

+ Parameters
    + todo_id: `22` (number, required)
    + id: `289` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/v1/todos/22/items/289`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204

## Todos [/todos/:id]


### Get todos [GET /api/v1/todos]


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
                "title": "ipsum",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.030Z",
                "updated_at": "2019-05-26T11:55:59.030Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 24,
                "title": "delectus",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.032Z",
                "updated_at": "2019-05-26T11:55:59.032Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 25,
                "title": "quam",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.034Z",
                "updated_at": "2019-05-26T11:55:59.034Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 26,
                "title": "eum",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.035Z",
                "updated_at": "2019-05-26T11:55:59.035Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 27,
                "title": "quidem",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.037Z",
                "updated_at": "2019-05-26T11:55:59.037Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 28,
                "title": "eveniet",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.039Z",
                "updated_at": "2019-05-26T11:55:59.039Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 29,
                "title": "sint",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.040Z",
                "updated_at": "2019-05-26T11:55:59.040Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 30,
                "title": "vel",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.042Z",
                "updated_at": "2019-05-26T11:55:59.042Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 31,
                "title": "dolores",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.044Z",
                "updated_at": "2019-05-26T11:55:59.044Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
                }
              },
              {
                "id": 32,
                "title": "aliquid",
                "user_id": 25,
                "created_at": "2019-05-26T11:55:59.045Z",
                "updated_at": "2019-05-26T11:55:59.045Z",
                "items": [
            
                ],
                "user": {
                  "id": 25,
                  "name": "Ramon Lockman V",
                  "email": "sung@ortizdibbert.co",
                  "password_digest": "$2a$04$YF2FZkwhr0zA6TUnusDXr.2QJvRQ0pEjq1O1SoznWdnZLUKmUL.am",
                  "created_at": "2019-05-26T11:55:59.028Z",
                  "updated_at": "2019-05-26T11:55:59.028Z"
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
                "title": "eius",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.074Z",
                "updated_at": "2019-05-26T11:55:59.074Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 34,
                "title": "maxime",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.076Z",
                "updated_at": "2019-05-26T11:55:59.076Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 35,
                "title": "quo",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.078Z",
                "updated_at": "2019-05-26T11:55:59.078Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 36,
                "title": "et",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.079Z",
                "updated_at": "2019-05-26T11:55:59.079Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 37,
                "title": "optio",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.081Z",
                "updated_at": "2019-05-26T11:55:59.081Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 38,
                "title": "molestiae",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.082Z",
                "updated_at": "2019-05-26T11:55:59.082Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 39,
                "title": "modi",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.084Z",
                "updated_at": "2019-05-26T11:55:59.084Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 40,
                "title": "ea",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.086Z",
                "updated_at": "2019-05-26T11:55:59.086Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 41,
                "title": "dignissimos",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.088Z",
                "updated_at": "2019-05-26T11:55:59.088Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              },
              {
                "id": 42,
                "title": "quidem",
                "user_id": 26,
                "created_at": "2019-05-26T11:55:59.090Z",
                "updated_at": "2019-05-26T11:55:59.090Z",
                "items": [
            
                ],
                "user": {
                  "id": 26,
                  "name": "Perry Cartwright",
                  "email": "landonhuel@gulgowski.info",
                  "password_digest": "$2a$04$TlUzWyyoembU/t3CC4wcdu5DrGka1kD2dWgWDf9Wdbgyw7R/.oEkO",
                  "created_at": "2019-05-26T11:55:59.072Z",
                  "updated_at": "2019-05-26T11:55:59.072Z"
                }
              }
            ]

### Get todos/:id [GET /api/v1/todos/{id}]

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
              "title": "qui",
              "user_id": 27,
              "created_at": "2019-05-26T11:55:59.114Z",
              "updated_at": "2019-05-26T11:55:59.114Z",
              "items": [
            
              ],
              "user": {
                "id": 27,
                "name": "Jannet Dickens IV",
                "email": "annita@quitzon.co",
                "password_digest": "$2a$04$uy/uBoDqVDxIPmKn6LAIheHFvTXmorIYXsTQpyKLb8/.DnyV92gOC",
                "created_at": "2019-05-26T11:55:59.112Z",
                "updated_at": "2019-05-26T11:55:59.112Z"
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
              "title": "ipsa",
              "user_id": 28,
              "created_at": "2019-05-26T11:55:59.137Z",
              "updated_at": "2019-05-26T11:55:59.137Z",
              "items": [
            
              ],
              "user": {
                "id": 28,
                "name": "Ernie Klocko DDS",
                "email": "eartha@mclaughlinbernier.biz",
                "password_digest": "$2a$04$xT.zlksCF4vLJQ7sB/eu5u0nPrygxeLPMfgd.8iM4Sgfb30wOv37G",
                "created_at": "2019-05-26T11:55:59.136Z",
                "updated_at": "2019-05-26T11:55:59.136Z"
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

### Post todos [POST /api/v1/todos]


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
              "created_at": "2019-05-26T11:55:59.223Z",
              "updated_at": "2019-05-26T11:55:59.223Z",
              "items": [
            
              ],
              "user": {
                "id": 31,
                "name": "Esteban Schroeder",
                "email": "lynda@thompson.net",
                "password_digest": "$2a$04$X7oIft6gpLZfOa5D/gNv5eZfC48WT6Mi3GSSOaeODkuOeg4DM4BEq",
                "created_at": "2019-05-26T11:55:59.203Z",
                "updated_at": "2019-05-26T11:55:59.203Z"
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
              "created_at": "2019-05-26T11:55:59.250Z",
              "updated_at": "2019-05-26T11:55:59.250Z",
              "items": [
            
              ],
              "user": {
                "id": 32,
                "name": "Winter Zboncak",
                "email": "morton@gleason.info",
                "password_digest": "$2a$04$u8cxJP5nQ2oj1spTX08Dm.VBWrGNiRWP4nPm7q78nB25MG/FDLJjG",
                "created_at": "2019-05-26T11:55:59.229Z",
                "updated_at": "2019-05-26T11:55:59.229Z"
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
              "message": "#<ActiveModel::Errors:0x0000563680f35b08>"
            }

### Put todos/:id [PUT /api/v1/todos/{id}]

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
              "created_at": "2019-05-26T11:55:59.281Z",
              "updated_at": "2019-05-26T11:55:59.300Z",
              "items": [
            
              ],
              "user": {
                "id": 34,
                "name": "Faustino Rice",
                "email": "niki@harber.co",
                "password_digest": "$2a$04$TrzfkjnRgCVGrVRWOti3Iu1DoNZ49pkDpQqJo/VN0DzlLplLa0pMS",
                "created_at": "2019-05-26T11:55:59.279Z",
                "updated_at": "2019-05-26T11:55:59.279Z"
              }
            }

### Delete todos/:id [DELETE /api/v1/todos/{id}]

+ Parameters
    + id: `125` (number, required)

+ Request returns status code 204
**DELETE**&nbsp;&nbsp;`/api/v1/todos/125`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/json

+ Response 204
