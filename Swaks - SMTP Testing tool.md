## $${\color{red}SWAKS \ - \ Swiss \ Army \ Knife \ for \ SMTP}$$

### 🔹 What is SWAKS?

* CLI tool for testing **SMTP servers**
* Useful for:

  * Debugging email delivery
  * Testing authentication (SMTP AUTH)
  * Simulating real email sending
  * Checking TLS/SSL configs

---

### 🚀 Basic Usage

```bash
swaks --to user@example.com
```

👉 Sends a simple test email using localhost SMTP.

---

### 📬 Core Parameters

| Option      | Description         |
| ----------- | ------------------- |
| `--to`      | Recipient email     |
| `--from`    | Sender email        |
| `--server`  | SMTP server         |
| `--port`    | SMTP port           |
| `--data`    | Full raw email body |
| `--header`  | Add custom headers  |
| `--body`    | Email body          |
| `--timeout` | Timeout in seconds  |

---

### 🌐 SMTP Server Connection

```bash
swaks --to test@mail.com \
      --from me@mail.com \
      --server smtp.mail.com \
      --port 587
```

---

### 🔐 Authentication (SMTP AUTH)

## LOGIN

```bash
swaks --to test@mail.com \
      --from me@mail.com \
      --server smtp.mail.com \
      --auth LOGIN \
      --auth-user username \
      --auth-password password
```

#### PLAIN

```bash
--auth PLAIN
```

#### CRAM-MD5

```bash
--auth CRAM-MD5
```

---

### 🔒 TLS / SSL

#### STARTTLS (port 587)

```bash
swaks --server smtp.mail.com \
      --port 587 \
      --tls
```

#### SSL (port 465)

```bash
swaks --server smtp.mail.com \
      --port 465 \
      --tls-on-connect
```

#### Ignore certificate validation

```bash
--tls-verify
```

---

### 📨 Email Content

#### Simple body

```bash
swaks --to user@mail.com \
      --body "Hello world"
```

#### HTML email

```bash
swaks --to user@mail.com \
      --header "Content-Type: text/html" \
      --body "<h1>Hello</h1>"
```

#### Full raw message

```bash
swaks --data "Subject: Test\n\nHello"
```

---

### 📎 Attachments

```bash
swaks --attach file.pdf
```

Multiple:

```bash
--attach file1.pdf --attach file2.jpg
```

---

### 🧪 Debugging & Verbosity

```bash
--debug
--verbose
--quit-after RCPT
```

👉 Useful stages:

* `CONNECT`
* `HELO`
* `AUTH`
* `MAIL`
* `RCPT`
* `DATA`

---

### 🧬 Custom Headers

```bash
swaks --to user@mail.com \
      --header "Subject: Test Email" \
      --header "X-Custom: Value"
```

---

### 🧪 Testing Specific Scenarios

#### Test SMTP without sending body

```bash
--quit-after RCPT
```

#### Test authentication only

```bash
--quit-after AUTH
```

#### Test open relay

```bash
swaks --to external@mail.com \
      --from fake@other.com \
      --server smtp.target.com
```

---

### ⚙️ Advanced Examples

#### Gmail SMTP (example)

```bash
swaks --to recipient@gmail.com \
      --from your@gmail.com \
      --server smtp.gmail.com \
      --port 587 \
      --tls \
      --auth LOGIN \
      --auth-user your@gmail.com \
      --auth-password app_password
```

---

#### Send HTML + attachment + auth

```bash
swaks --to user@mail.com \
      --from me@mail.com \
      --server smtp.mail.com \
      --port 587 \
      --tls \
      --auth LOGIN \
      --auth-user user \
      --auth-password pass \
      --header "Subject: Report" \
      --header "Content-Type: text/html" \
      --body "<h1>Report</h1>" \
      --attach report.pdf
```

---

### 🧠 Pro Tips

* Use `--protocol ESMTP` explicitly if needed
* Combine with logs for debugging delivery
* Great for testing:

  * SPF / DKIM alignment (indirectly)
  * SMTP relays
  * Mail gateway rules

---

### ⚠️ Common Pitfalls

* ❌ Wrong port (25 / 465 / 587 confusion)
* ❌ Missing TLS when required
* ❌ Gmail requires **App Password**, not normal password
* ❌ Firewall blocking outbound SMTP

---

### 🔍 Quick One-Liners

```bash
### Minimal test
swaks --to test@mail.com

### Auth + TLS
swaks --to t@mail.com --server smtp.com --port 587 --tls \
      --auth LOGIN --auth-user u --auth-password p

### HTML email
swaks --to t@mail.com --header "Content-Type: text/html" \
      --body "<b>Hello</b>"
```
