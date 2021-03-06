FROM centos:7

RUN \
  yum -y update && \
  yum -y install java-1.6.0-openjdk kde-l10n-Chinese glibc-common && \
  yum clean all && \
  rm -rf /var/cache/yum && \
  localedef -c -f UTF-8 -i zh_CN zh_CN.utf8  && \
  echo 'LANG="zh_CN.UTF-8"' > /etc/locale.conf && \
  source /etc/locale.conf

ENV JAVA_HOME /usr/lib/jvm/jre-openjdk
ENV LANG zh_CN.UTF-8
ENV TZ "Asia/Shanghai"
ENV TERM xterm

CMD ["bash"]
