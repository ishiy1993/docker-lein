FROM clojure:lein-2.7.1

USER worker
ENV HOME /home

COPY profiles.clj $HOME/.lein/
WORKDIR /work

CMD ["lein", "swank", "3333", "0.0.0.0"]
