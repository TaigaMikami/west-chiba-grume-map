# west-chiba-gurume-map-api
[![CircleCI](https://circleci.com/gh/TaigaMikami/west-chiba-grume-map-api/tree/develop.svg?style=svg)](https://circleci.com/gh/TaigaMikami/west-chiba-grume-map-api/tree/develop)

# setup
```
$ git clone git@github.com:TaigaMikami/west-chiba-grume-map-api.git
$ docker-compose build
$ docker-compose up
```

# setup db
```
$ docker-compose run web rails db:create db:migrate db:seed
```

# ping
```
$ curl localhost:3000/api/v1/shops
{
    "status": "ok",
    "data": [
        {
            "id": 1,
            "name": "千葉大学 フードコート",
            "address": "千葉県千葉市稲毛区弥生町１−３３",
            "lat": 35.627809,
            "lng": 140.103506,
            "description": "千葉大学にある学生食堂です。",
            "created_at": "2019-08-19T11:47:49.208Z",
            "updated_at": "2019-08-19T11:47:49.208Z"
        }
    ]
}
```
