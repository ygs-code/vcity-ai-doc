FROM node:22-alpine AS build_image


#清理缓存
# ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache



RUN  echo "=====  build_image镜像  ====="

#声明作者
MAINTAINER yao guan shou

RUN mkdir app

RUN echo '复制package.json文件'

# 复制package.json文件
COPY  package.json  /app
WORKDIR /app


# RUN echo 'dist , node_modules目录下所有文件,以及清理缓存'
RUN echo '删除dist,node_modules目录下所有文件,以及清理缓存'  & rm -rf ./node_modules & rm -rf  ./dist & rm -rf package-lock.json & rm -rf yarn.lock & npm cache clean --force
RUN echo '安装node_modules依赖包'  & npm install  -g yarn & yarn


# RUN echo '安装应用'

# ARG CLIENT_ADDRESS 
# ARG CLIENT_PORT 
# ARG CLIENT_PUBLICPATH 
# ARG CLIENT_NODE_ENV 
# ARG CLIENT_RENDER 

# ARG ENTRY_SERVER_NAME

ARG BUILD_SCRIPT

ENV BUILD_SCRIPT=${BUILD_SCRIPT}

# ENV ADDRESS=${CLIENT_ADDRESS}
# ENV PORT=${CLIENT_PORT}
# ENV PUBLICPATH=${CLIENT_PUBLICPATH}
# ENV NODE_ENV=${CLIENT_NODE_ENV}
# ENV RENDER=${CLIENT_RENDER}

# ENV ENTRY_SERVER_NAME=${ENTRY_SERVER_NAME}



# #清理缓存
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
# #移动当前目录下面的文件到app目录下
RUN  echo "=====  移动当前目录下面的文件到app目录下 ====="
COPY  .  /app
RUN echo '复制成功'
# #进入到app目录下面，类似cd
WORKDIR /app
RUN  echo "=====  构建工具打包编译代码  ====="



# 打印变量的值（例如脚本路径）
RUN echo "BUILD_SCRIPT 的值: $BUILD_SCRIPT"

RUN echo '构建工具打包编译代码' & npm run $BUILD_SCRIPT



RUN  echo "=====  nginx镜像  ====="
# # # # 设置基础镜像
FROM nginx:alpine

# 定义作者
MAINTAINER yao guan shou
#对外暴露的端口
# EXPOSE 80
#更新Alpine的软件源为国内（清华大学）的站点，因为从默认官源拉取实在太慢了。。。
# RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main/" > /etc/apk/repositories
# RUN apk update \
#   && apk upgrade \
#   && apk add --no-cache bash \
#   bash-doc \
#   bash-completion \
#   && rm -rf /var/ca

# 将dist文件中的内容复制到 /usr/share/nginx/html/ 这个目录下面
RUN echo '复制静态文件到nginx html目录中'
# 拷贝 build_image 镜像的 dist 文件到 nginx中
COPY --from=build_image  /app/dist  /usr/share/nginx/html/
# COPY  dist/  /usr/share/nginx/html/

# 覆盖默认配置
COPY nginx/nginx.conf   /etc/nginx/conf.d/default.conf
RUN echo 'client镜像build打包成功'

CMD ["nginx", "-g", "daemon off;"]

# docker run -it --env-file ./run/hrms.env -v

