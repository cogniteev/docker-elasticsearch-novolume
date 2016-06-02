FROM elasticsearch:2.3

# Make a new directory that is not in a volume
RUN set -ex && mkdir -p /data && chown -R elasticsearch:elasticsearch /data

CMD ["elasticsearch", "-Des.path.data=/data"]
