FROM elasticsearch:1.7

# Make a new directory that is not in a volume
RUN set -ex && mkdir -p /data && chown -R elasticsearch:elasticsearch /data

CMD ["elasticsearch", "-Des.path.data=/data"]
