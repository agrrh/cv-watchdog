# CV Watchdog

Send notifies abount new CV views to Telegram.

This file seeks for `CV_WATCHDOG_URI_PATH` substring in `CV_WATCHDOG_LOG_PATH` file and fires off notifications if finds it.

Works as simple as `tail -F file.log`.

### Preparations

First, you need to obtain your telegram chat_id. This could be done via [@get_id_bot](https://t.me/get_id_bot).

Then prepare environment and you're done:

```
pip install -r requirements.txt
```

### How to run

```
# path to log file
export CV_WATCHDOG_LOG_PATH=/var/log/caddy/my-website.log
# substring to grep
export CV_WATCHDOG_URI_PATH=/pages/cv
# comma-separated substrings list to ignore
export CV_WATCHDOG_IGNORE=10.0.0,?some-flag

# Telegram bot token
export CV_WATCHDOG_TG_TOKEN=<obtain one from @BotFather>
# Telegram target chat ID
export CV_WATCHDOG_TG_CHAT_ID=<could be obtained from @get_id_bot>

./watchdog
```

Don't forget to restart watchdog after log file rotation.
