# post-blog-server

간단한 포스트를 작성 , 수정, 삭제 등 할 수 있는 블로그 웹 앱의 server입니다.

Node.js의 koa 프레임워크를 사용하여 REST API를 구현하였습니다.

jsonwebtoken 라이브러리를 사용하여 회원가입 , 로그인 , 로그아웃 기능에 필요한 회원 인증 시스템을 구현하였고,

mongoDB를 사용하여 서버와 데이터베이스를 연결하였습니다.

이후에 client를 구현하여 이 서버에 있는 API를 사용할 예정입니다.

※ 3 / 30 추가내용  
koa-static을 사용하여 nginx 서버를 따로 구현하지않고 API서버와 통합하여 정적인 페이지를 제공하게 하였습니다.

> [Young-blog](https://blog-axhvl5dnbq-an.a.run.app/) 배포된 사이트 주소입니다.

> 환경변수 파일 .env는 올리지않았습니다.

로컬 환경에서 실행
yarn start:dev

---

## posts API

### 포스트 등록하기

- POST /api/posts

```json
/* Request body */
{
  "title": "제목",
  "body": "내용",
  "tags": ["태그1", "태그2"]
}
```

### 포스트 전부다 가져오기

- GET /api/posts/

### 해당 id값의 포스트 가져오기

- GET /api/posts/:id

### 해당 페이지의 포스트 가져오기

- GET /api/posts?username=&tag=&page=

> page마다 최대 포스트 : 10  
> 'Last-page' 정보는 Request Headers에 있음.  
> username과 tag로 해당 페이지 찾아올수있음.

### 해당 id값의 포스트 삭제하기

- DELETE /api/posts/:id

### 해당 id값의 포스트 수정하기

- PATCH /api/posts/:id

```json
/* Request body */
{
  "title": "수정",
  "body": "수정 내용",
  "tags": ["수정태그1", "수정태그2"]
}
```

---

## user API

### 회원가입

- POST /api/auth/register

```json
/* Request body */
{
  "username": "username",
  "password": "password"
}
```

### 로그인

- POST /api/auth/login

```json
/* Request body */
{
  "username": "username",
  "password": "password"
}
```

### 로그인 상태 확인하기

- GET /api/auth/check

### 로그아웃

- POST /api/auth/logout

## Environments

- koa@2.13.1
- koa-router@10.0.0
- bcrypt@5.0.1
- dotenv@8.2.0
- esm@3.2.25
- joi@17.4.0
- jsonwebtoken@8.5.1
- mongoose@5.11.19
