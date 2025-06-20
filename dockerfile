# 使用官方 Nginx 基础镜像
FROM nginx:alpine

# 移除默认的 Nginx 配置文件
RUN rm -rf /etc/nginx/conf.d/default.conf

# 复制自定义配置文件到容器中
COPY nginx.conf /etc/nginx/conf.d/

# 将 HTML 文件复制到 Nginx 默认的网站根目录
COPY src/ /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 8848

# 启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]  