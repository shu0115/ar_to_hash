# ArToHash

Add `to_hash` method to ActiveRecord::Base.

## Installation

Add this line to your application's Gemfile:

    gem 'ar_to_hash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ar_to_hash

## Usage

### Normal

```rb
User.first.tapp
----------
#<User:0x007f81d11e2760> {
                      :id => 1,
              :created_at => Mon, 03 Feb 2014 15:21:37 JST +09:00,
              :updated_at => Thu, 01 May 2014 16:02:39 JST +09:00,
}
----------

User.first.class.name
----------
=> "User"
----------
```

### to_hash

```rb
User.first.to_hash.tapp
----------
{
                      "id" => 1,
              "created_at" => "2014-02-03T15:21:37.442+09:00",
              "updated_at" => "2014-05-01T16:02:39.670+09:00",
}
----------

User.first.to_hash.class.name
----------
=> "Hash"
----------
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/ar_to_hash/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
