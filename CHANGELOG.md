### 1.3.0

- CHANGE:
  - 禁止 ldap 用户修改账号密码

### 1.2.3

- FIX:
  - 修复了需要登录两次，密码验证才能生效的问题
- CHANGE:
  - 密码二次验证的时候不从数据库里取值即可完成验证，所以密码不再存放到数据库中，避免泄露

### 1.2.2

- FIX:
  - 修复了二次密码验证失败的问题

### 1.2.1

- FIX:
  - ldap 账号登录失败，原因是因为禅道现在默认对密码进行 MD5 ，所以需要禁用这个行为，
    通过添加配置：`$config->notMd5Pwd = true;` 解决
  - ldap 测试账号服务器是否有效失败，发现是因为 js 中的 createLink 函数无法处理复杂的 GET 字符串引起的，
    使用 POST 请求解决了这个问题
