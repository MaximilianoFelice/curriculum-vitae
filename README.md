# Curriculum Vitae

## Deploy


## Environment setup
1. Install Ruby (this uses rvm) `rvm install <version-on-file>`
2. Install Heroku (you might want to deploy this on any other thing, that's ok) `brew tap heroku/brew && brew install heroku`
3. Create Heroku app: `heroku create --remote heroku-18 --stack heroku-18 <your app name with heroku-18 appended>`
4. Create Heroku remote: `heroku create` (https://devcenter.heroku.com/articles/git#creating-a-heroku-remote)

## Upgrading stack in Heroku
https://devcenter.heroku.com/articles/upgrading-to-the-latest-stack