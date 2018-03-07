# hobby_management
* Ruby version
` Ruby 2.4.1 `

* Rails version
  Rails 5.1.4

## Setup

### Clone this Repository
```
$ git clone git@github.com:Atsuyoshi-N/hobby_management.git
$ cd hobby_management
```

### Check Ruby version
This Repository uses `Ruby 2.4.1`. So, please check your ruby version.
```
$ ruby -v
```
unless your ruby version equals 2.4.1, please follow the next step.
```
$ rbnev install 2.4.1
$ rbenv local 2.4.1
$ rbenv rehash
$ gem install bundler
```
this command may take a while...

### Check Rails version
Also, this Repository requires `Rails 5.1.4`
```
$ rails -v
```
unless returned rails version equals 5.1.4, please follow the next step
```
$ gem install rails -v 5.1.4
```

### Database setup
```
$ bundle install
$ rails db:create
```



