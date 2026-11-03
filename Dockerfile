FROM nginx:alpine

# 기존 nginx 기본 정적 콘텐츠 대신 커스텀 콘텐츠로 교체
COPY app/ /usr/share/nginx/html/

EXPOSE 80
