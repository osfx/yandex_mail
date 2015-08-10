# Yamail
Mail sebder over Yandex SMTP server

## Installation
Install ruby gem

```ruby
gem install yandex_mail
```

Create config file in your home directory called .yandexmail

```yaml
# ~/.yandexmail

user_name:  yourname@yandex.ru
password:   your_password

```

## How to

For example

```
yandex_mail recipient@email.com 'email subject' 'email body'
```
