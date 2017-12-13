# CV Watchdog

Send notifies abount new CV views to Telegram.

This file seeks for `--uri-path` substring in `--log-path` file and fires off notifications if finds it.

Works as simple as `tail -F file.log`.

### Preparations

First, you need to obtain your telegram chat_id. This could be done via [@get_id_bot](https://t.me/get_id_bot).

Then prepare environment and you're done:

```
pip install -r requirements.txt
```

### How to run

```
./watchdog \
  --uri-path /pages/cv \
  --log-path /var/log/caddy/my-website.log \
  --tg-token secret_token \
  --tg-chat-id secret_value
```

Don't forget to restart watchdog after log file rotation.
