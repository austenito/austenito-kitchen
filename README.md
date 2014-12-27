The Chef Kitchen used to deploy [Happiness Service](https://github.com/austenito/happiness_service) and [Happiness](https://github.com/austenito/happiness) to vagrant and production.

# Dependencies

[Chef Docker Happiness Recipe](https://github.com/austenito/chef-docker-happiness)

# Deploying to production

* Copy production.json.example
* Rename nodes/production.json.example to nodes/<host>.json
* Run `knife solo bootstrap user@host`

(Add the part about consoling in and setting the api key)

