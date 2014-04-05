#EMAGCOLLAB Line of Life API

###Submissions#create
`POST http://lineoflife.herokuapp/submissions/create`
The API accepts a JSON payload (see `payload.json`) and returns JSON containing the URL of the processed image.

Request data:

    {
      "submission": {
        "name": STRING,
        "email": STRING,
        "image": STRING,
        "pickup": BOOL,
        "type_id": INT,
        "transform_id": INT,
        "responses": [
          STRING,
          ...
        ]
      }
    }

Response data:

    {
      "name": STRING,
      "email": STRING,
      "image": STRING
    }

###Admin
`http://lineoflife.herokuapp/admin`
The admin section enables viewing and adjustment of the transformation parameters applied in the image processing, submissions, and other database records.