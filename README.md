# hello-servlet

Ứng dụng web Java (Jakarta Servlet + JSP) chạy trên Tomcat, dùng Maven và PostgreSQL.

## Chạy local

```bash
mvn clean package
./deploy.sh   # copy war vào Tomcat local
```

## Chạy bằng Docker

```bash
docker build -t hello-servlet .
docker run -p 8080:8080 hello-servlet
```

Sau đó mở http://localhost:8080

## Biến môi trường (tùy chọn, cho /test-db)

| Biến | Mặc định | Mô tả |
|---|---|---|
| `DB_URL` | `jdbc:postgresql://localhost:5432/hello_servlet_db` | JDBC URL tới PostgreSQL |
| `DB_USER` | `darond` | User DB |
| `DB_PASSWORD` | *(rỗng)* | Mật khẩu DB |

## Deploy lên Render.com

1. Push repo này lên GitHub.
2. Vào [render.com](https://render.com) → New → Web Service → Connect kho GitHub `hello-servlet`.
3. Chọn **Environment: Docker** (Render tự nhận diện `Dockerfile`).
4. (Tùy chọn) Nếu muốn `/test-db` hoạt động: tạo một Postgres service trên Render, rồi set các biến môi trường `DB_URL`, `DB_USER`, `DB_PASSWORD` ở tab Environment của Web Service.
5. Deploy — Render sẽ cấp một link dạng `https://hello-servlet-xxxx.onrender.com`.
