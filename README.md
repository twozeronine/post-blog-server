로컬 환경에서 실행
yarn start:dev

## posts API

포스트 등록하기
POST /api/posts

포스트 전부다 갖고오기
GET /api/posts/

해당 id값의 포스트 가져오기
GET /api/posts/:id

해당 페이지의 포스트 가져오기
GET /posts?page={Index}

( page마다 최대 포스트 : 10 )
'Last-page'는 Request Headers에 있음.

해당 id값의 포스트 삭제하기
DELETE /api/posts/:id

해당 id값의 포스트 수정하기
PATCH /api/posts/:id
{
"title": "수정",
"body": "수정 내용",
"tags": ['수정','태그']
}

## user API

회원가입
POST /api/auth/register
{
"username": "young",
"password": "mypass123"
}

로그인
POST /api/auth/login

{
"username": "young",
"password": "mypass123"
}

로그인 상태 확인하기
GET /api/auth/check

로그아웃
POST /api/auth/logout
