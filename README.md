## About

```sh
$ echo 'SLACK_URL=YOUR_SLACK_INCOMING_HOOK_URL' > .env
$ bundle exec ruby main.rb
$ curl -F 'flushed_at=2015-02-1 23:15:00' -F 'max_items=2' http://localhost:4567/shishiodoshis/foo
$ curl -F 'msg=bar' http://localhost:4567/shishiodoshis/foo/item
$ curl -F 'msg=baz' http://localhost:4567/shishiodoshis/foo/item
```
