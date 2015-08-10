# yandex_mail 
CLI email sender over Yandex SMTP

***
## Three simple steps
#### 1. Install ruby gem

```ruby
gem install yandex_mail
```

#### 2. Create config file in your home directory called .yandexmail
```yaml
# ~/.yandexmail
user_name:  yourname@yandex.ru
 password:  your_password
```
#### 3. Send mail
```yaml
yandex_mail recipient@email.com 'email subject' 'email body'
```

***
## You will see something like that

![example](http://imgr.es/37UH)

***
### License

The MIT License (MIT)
Copyright © Peter Boriskin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
